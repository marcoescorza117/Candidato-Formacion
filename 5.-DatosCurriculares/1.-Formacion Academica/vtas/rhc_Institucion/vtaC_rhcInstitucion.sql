CREATE VIEW [dbo].[vtaC_rhcInstitucion](
	 [idInstitucion]
	,[institucion]
	,[institucionIngles]
	,[idPais]
	,[idEntidadFederativa]
)
AS
SELECT
	 [idInstitucion]
	,[institucion]
	,[institucionIngles]
	,[idPais]
	,[idEntidadFederativa]
 FROM [dbo].[vtaI_rhcInstitucion]
GO
