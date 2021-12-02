
CREATE VIEW	[dbo].[vtaI_rhcDocumento](
	 [idDocumento]
	,[idTipoDocumento]
	,[archivo]
	,[descripcion]
	,[archivoServidor]
	,[archivoServidorRuta]
	,[fechaRegistro]
)
AS
SELECT
	 [idDocumento]
	,[idTipoDocumento]
	,[archivo]
	,[descripcion]
	,[archivoServidor]
	,[archivoServidorRuta]
	,[fechaRegistro]
FROM [dbo].[vtaT_rhcDocumento]
GO 

 