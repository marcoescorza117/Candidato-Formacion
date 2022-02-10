CREATE VIEW	[dbo].[vtaT_rhcPersona_Pariente_Adscripcion](
	 [idPersonaPariente]
	,[adscripcion]
)
AS
SELECT
	 [idPersonaPariente]
	,[adscripcion]
FROM [dbo].[rhc_Persona_Pariente_Adscripcion]
GO