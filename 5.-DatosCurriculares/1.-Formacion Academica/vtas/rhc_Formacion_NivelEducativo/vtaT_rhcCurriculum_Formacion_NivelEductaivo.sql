CREATE VIEW	[dbo].[vtaT_rhcCurriculum_Formacion_NivelEductaivo](
	 [idCurriculumFormacion]
	,[idNivelEducativo]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[idNivelEducativo]
FROM [dbo].[rhc_Curriculum_Formacion_NivelEductaivo]
GO
