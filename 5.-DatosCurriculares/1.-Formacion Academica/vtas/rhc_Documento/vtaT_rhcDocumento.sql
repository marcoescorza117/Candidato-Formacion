CREATE VIEW	[dbo].[vtaT_rhcDocumento](
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
FROM [dbo].[rhc_Documento]
GO

 
