CREATE VIEW [dbo].[vtaC_rhcCurriculum_Formacion_AreaConocimiento](
	 [idCurriculumFormacion]
	,[idAreaConocimiento]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[idAreaConocimiento]
 FROM [dbo].[vtaI_rhcCurriculum_Formacion_AreaConocimiento]
GO
