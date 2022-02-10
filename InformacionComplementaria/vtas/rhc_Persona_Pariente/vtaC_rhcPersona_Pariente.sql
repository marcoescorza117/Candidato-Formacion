
CREATE VIEW [dbo].[vtaC_rhcPersona_Pariente](
 	 [idPersonaPariente]
	,[idPersona]
	,[idTipoParentesco]
	,[paterno]
	,[materno]
	,[nombres]
	,[adscripcion]
)
AS
SELECT
	 [idPersonaPariente]
	,[idPersona]
	,[idTipoParentesco]
	,[paterno]
	,[materno]
	,[nombres]
	,[adscripcion]
 FROM [dbo].[vtaI_rhcPersona_Pariente]
GO

