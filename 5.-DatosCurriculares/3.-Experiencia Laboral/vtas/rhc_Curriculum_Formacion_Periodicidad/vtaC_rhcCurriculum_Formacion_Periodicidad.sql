
CREATE VIEW [dbo].[vtaC_rhcCurriculum_Formacion_Periodicidad](
	 [idCurriculumFormacion]
	,[fechaInicio]
	,[fechaTermino]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[fechaInicio]
	,[fechaTermino]
 FROM [dbo].[vtaI_rhcCurriculum_Formacion_Periodicidad]
GO
