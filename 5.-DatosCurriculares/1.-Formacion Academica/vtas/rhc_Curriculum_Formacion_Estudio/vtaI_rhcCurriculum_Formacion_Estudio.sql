
CREATE VIEW	[dbo].[vtaI_rhcCurriculum_Formacion_Estudio](
	 [idCurriculumFormacion]
	,[idProgramaEducativo]
	,[estudio]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[idProgramaEducativo]
	,[estudio]
FROM [dbo].[vtaT_rhcCurriculum_Formacion_Estudio]
GO 