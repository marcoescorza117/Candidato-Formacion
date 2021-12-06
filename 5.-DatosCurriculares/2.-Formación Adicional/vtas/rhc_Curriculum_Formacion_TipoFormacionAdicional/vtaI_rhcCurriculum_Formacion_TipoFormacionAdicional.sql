
CREATE VIEW	[dbo].[vtaI_rhcCurriculum_Formacion_TipoFormacionAdicional](
	 [idCurriculumFormacion]
	,[idTipoFormacionAdicional]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[idTipoFormacionAdicional]
FROM [dbo].[vtaT_rhcCurriculum_Formacion_TipoFormacionAdicional]
GO 