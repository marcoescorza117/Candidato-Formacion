CREATE VIEW [dbo].[vtaT_rhcCurriculum_Formacion_Periodicidad](
	 [idCurriculumFormacion]
	,[fechaInicio]
	,[fechaTermino]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[fechaInicio]
	,[fechaTermino]
FROM [dbo].[rhc_Curriculum_Formacion_Periodicidad]
GO

 