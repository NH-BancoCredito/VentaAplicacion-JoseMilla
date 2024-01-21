using Amazon.Runtime.Internal;
using Azure.Core;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System.Collections.Generic;
using Venta.Domain.Models;
using Venta.Domain.Repositories;
using Venta.Infrastructure.Repositories.Base;


namespace Venta.Infrastructure.Repositories
{
    public class ProductoRepository : IProductoRepository
    {
        private readonly VentaDbContext _context;
        public ProductoRepository(VentaDbContext context)
        {
            // _context = context ?? throw new ArgumentNullException(nameof(context));
            _context = context;
        }


        public async Task<bool> Adicionar(Producto entity)
        {

 

            var AddProducto = new Producto()
            {
                IdProducto = _context.Productos.Max(id => id.IdProducto) + 1,
                Nombre = entity.Nombre,
                Stock = entity.Stock,
                StockMinimo = entity.StockMinimo,
                PrecioUnitario = entity.PrecioUnitario,
                IdCategoria = entity.IdCategoria
            };


           _context.Productos.Add(AddProducto);
           _context.SaveChanges();
           return entity.IdProducto > 0;
           
        }


        public async Task<Producto> Consultar(int id)
        {
           // return await _context.Productos.FindAsync(id);

            return await _context.Productos.Where(p => p.IdProducto == id).FirstOrDefaultAsync();
        }

        public async Task<IEnumerable<Producto>> Consultar(string nombre)
        {

            //   return  await _context.Productos.Where(p => p.Nombre == nombre).ToListAsync(); ;

            return await _context.Productos.Include(p => p.Categoria).ToListAsync();
           
            // throw new NotImplementedException();
        }

       
        public async Task<bool> Actualizar (Producto entity )
        {

            await _context.Productos.Where(x => x.IdProducto == entity.IdProducto)
                .ExecuteUpdateAsync(
                 s => s.SetProperty(x => x.Nombre, entity.Nombre)
                .SetProperty(x => x.Stock, entity.Stock)
                .SetProperty(x => x.StockMinimo,  entity.StockMinimo)
                .SetProperty(x => x.PrecioUnitario, entity.PrecioUnitario)
                .SetProperty(x => x.IdCategoria,  entity.IdCategoria)
                 
            );

        


            _context.SaveChanges();
            return true;

        }

        public Task<bool> Eliminar(Producto entity)
        {
            throw new NotImplementedException();
        }

        //public Task<bool> Modificar(Producto entity)
        //{
        //    throw new NotImplementedException();
        //}
    }
}
