CREATE VIEW	[dbo].[vtaT_rhcInstitucion](
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
FROM [dbo].[rhc_Institucion]
GO
