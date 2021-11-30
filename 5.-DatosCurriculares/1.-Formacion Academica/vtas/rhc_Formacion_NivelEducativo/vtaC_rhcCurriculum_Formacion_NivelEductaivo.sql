
CREATE VIEW [dbo].[vtaC_rhcCurriculum_Formacion_NivelEductaivo](
	 [idCurriculumFormacion]
	,[idNivelEducativo]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[idNivelEducativo]
 FROM [dbo].[vtaI_rhcCurriculum_Formacion_NivelEductaivo]
GO
