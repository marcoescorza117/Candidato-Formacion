CREATE VIEW	[dbo].[vtaI_rhcPersona_Documento](
	 [idPersonaDocumento]
	,[idPersona]
    ,[idDocumento]
    ,[idTipoDocumento]
    ,[tipoDocumento]
    ,[archivo]
    ,[descripcion]
    ,[archivoServidor]
    ,[archivoServidorRuta]
    ,[fechaRegistro]
)
AS
SELECT
       vpd.[idPersonaDocumento],
       vpd.[idPersona],
       vpd.[idDocumento],
       vd.[idTipoDocumento],
       vd.[tipoDocumento],
       vd.[archivo],
       vd.[descripcion],
       vd.[archivoServidor],
       vd.[archivoServidorRuta],
       vd.[fechaRegistro]
FROM [dbo].[vtaT_rhcPersona_Documento] as vpd
INNER JOIN [dbo].[vtaI_rhcDocumento] as vd ON vpd.idDocumento = vd.idDocumento
go

