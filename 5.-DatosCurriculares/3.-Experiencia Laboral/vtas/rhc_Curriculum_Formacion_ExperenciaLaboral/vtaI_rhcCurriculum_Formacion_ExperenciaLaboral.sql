
CREATE VIEW	[dbo].[vtaI_rhcCurriculum_Formacion_ExperenciaLaboral](
	 [idCurriculumFormacion]
	,[puesto]
	,[actividades]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[puesto]
	,[actividades]
FROM [dbo].[vtaT_rhcCurriculum_Formacion_ExperenciaLaboral]
GO 
