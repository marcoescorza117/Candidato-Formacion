CREATE VIEW [dbo].[vtaC_rhcCurriculum_Formacion_Estudio](
	 [idCurriculumFormacion]
	,[idProgramaEducativo]
	,[estudio]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[idProgramaEducativo]
	,[estudio]
 FROM [dbo].[vtaI_rhcCurriculum_Formacion_Estudio]
GO
