SELECT @@VERSION;

CREATE DATABASE [Venta] 
ON	(FILENAME = '/var/opt/mssql/Venta/data/Venta.mdf'),
	(FILENAME = '/var/opt/mssql/Venta/data/Venta.ldf') 
FOR ATTACH