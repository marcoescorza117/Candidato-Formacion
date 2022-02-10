
CREATE VIEW	[dbo].[vtaI_rhcPersona_LenguaIndigena](
	 [idPersonaLenguaIndigena]
	,[idPersona]
	,[idLenguaIndigena]
)
AS
SELECT
	 [idPersonaLenguaIndigena]
	,[idPersona]
	,[idLenguaIndigena]
FROM [dbo].[vtaT_rhcPersona_LenguaIndigena]
GO 
