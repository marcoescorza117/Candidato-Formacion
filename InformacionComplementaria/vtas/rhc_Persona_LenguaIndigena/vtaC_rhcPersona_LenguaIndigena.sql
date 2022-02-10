CREATE VIEW [dbo].[vtaC_rhcPersona_LenguaIndigena](
	 [idPersonaLenguaIndigena]
	,[idPersona]
	,[idLenguaIndigena]
	,[lenguaIndigena]
)
AS
SELECT
	 [idPersonaLenguaIndigena]
	,[idPersona]
	,[idLenguaIndigena]
	,[lenguaIndigena]
 FROM [dbo].[vtaI_rhcPersona_LenguaIndigena]
GO

 