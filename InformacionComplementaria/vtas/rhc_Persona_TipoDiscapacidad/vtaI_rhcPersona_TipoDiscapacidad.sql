 

CREATE VIEW	[dbo].[vtaI_rhcPersona_TipoDiscapacidad](
	 [idPersonaTipoDiscapacidad]
	,[idPersona]
	,[idTipoDiscapacidad]
	,[tipoDiscapacidad]
)
AS
SELECT
	 ptd.[idPersonaTipoDiscapacidad]
	,ptd.[idPersona]
	,ptd.[idTipoDiscapacidad]
    ,vtd.tipoDiscapacidad
FROM [dbo].[vtaT_rhcPersona_TipoDiscapacidad] as ptd
INNER JOIN [dbo].vtaI_rhcTipoDiscapacidad as vtd ON ptd.idTipoDiscapacidad = vtd.idTipoDiscapacidad

GO 

