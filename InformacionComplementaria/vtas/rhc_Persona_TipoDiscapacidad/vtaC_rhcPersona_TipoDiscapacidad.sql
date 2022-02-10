CREATE VIEW [dbo].[vtaC_rhcPersona_TipoDiscapacidad](
	 [idPersonaTipoDiscapacidad]
	,[idPersona]
	,[idTipoDiscapacidad]
	,[tipoDiscapacidad]
)
AS
SELECT
	 [idPersonaTipoDiscapacidad]
	,[idPersona]
	,[idTipoDiscapacidad]
	,[tipoDiscapacidad]
 FROM [dbo].[vtaI_rhcPersona_TipoDiscapacidad]
GO

 