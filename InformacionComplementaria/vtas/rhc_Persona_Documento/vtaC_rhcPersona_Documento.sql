CREATE VIEW [dbo].[vtaC_rhcPersona_Documento](
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
 FROM [dbo].[vtaI_rhcPersona_Documento]
go

