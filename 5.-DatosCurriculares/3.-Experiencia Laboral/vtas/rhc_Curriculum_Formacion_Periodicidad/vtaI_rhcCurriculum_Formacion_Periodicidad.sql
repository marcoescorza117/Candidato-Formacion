
CREATE VIEW	[dbo].[vtaI_rhcCurriculum_Formacion_Periodicidad](
	 [idCurriculumFormacion]
	,[fechaInicio]
	,[fechaTermino]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[fechaInicio]
	,[fechaTermino]
FROM [dbo].[vtaT_rhcCurriculum_Formacion_Periodicidad]
GO 

 