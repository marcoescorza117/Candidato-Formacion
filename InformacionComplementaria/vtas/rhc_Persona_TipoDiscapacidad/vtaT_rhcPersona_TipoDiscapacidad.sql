CREATE VIEW	[dbo].[vtaT_rhcPersona_TipoDiscapacidad](
	 [idPersonaTipoDiscapacidad]
	,[idPersona]
	,[idTipoDiscapacidad]
)
AS
SELECT
	 [idPersonaTipoDiscapacidad]
	,[idPersona]
	,[idTipoDiscapacidad]
FROM [dbo].[rhc_Persona_TipoDiscapacidad]
GO

