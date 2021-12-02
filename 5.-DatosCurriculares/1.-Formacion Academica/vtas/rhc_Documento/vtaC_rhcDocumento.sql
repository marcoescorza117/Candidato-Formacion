
CREATE VIEW [dbo].[vtaC_rhcDocumento](
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
 FROM [dbo].[vtaI_rhcDocumento]
GO
