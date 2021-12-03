CREATE VIEW	[dbo].[vtaT_rhcCurriculum_Formacion_TICS](
	 [idCurriculumFormacion]
	,[idTipoTICS]
	,[herramientas]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[idTipoTICS]
	,[herramientas]
FROM [dbo].[rhc_Curriculum_Formacion_TICS]
GO