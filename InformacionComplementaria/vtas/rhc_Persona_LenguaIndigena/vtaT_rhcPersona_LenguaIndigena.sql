
CREATE VIEW	[dbo].[vtaT_rhcPersona_LenguaIndigena](
	 [idPersonaLenguaIndigena]
	,[idPersona]
	,[idLenguaIndigena]
)
AS
SELECT
	 [idPersonaLenguaIndigena]
	,[idPersona]
	,[idLenguaIndigena]
FROM [dbo].[rhc_Persona_LenguaIndigena]
GO