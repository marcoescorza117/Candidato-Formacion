 

CREATE VIEW	[dbo].[vtaI_rhcInstitucion](
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
FROM [dbo].[vtaT_rhcInstitucion]
GO 