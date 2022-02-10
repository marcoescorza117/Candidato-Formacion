CREATE VIEW	[dbo].[vtaT_rhcPersona_Pariente](
	 [idPersonaPariente]
	,[idPersona]
	,[idTipoParentesco]
	,[paterno]
	,[materno]
	,[nombres]
)
AS
SELECT
	 [idPersonaPariente]
	,[idPersona]
	,[idTipoParentesco]
	,[paterno]
	,[materno]
	,[nombres]
FROM [dbo].[rhc_Persona_Pariente]
GO