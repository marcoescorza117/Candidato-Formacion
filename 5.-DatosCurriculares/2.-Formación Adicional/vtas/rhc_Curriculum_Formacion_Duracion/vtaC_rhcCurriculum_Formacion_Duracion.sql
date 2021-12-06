
CREATE VIEW [dbo].[vtaC_rhcCurriculum_Formacion_Duracion](
	 [idCurriculumFormacion]
	,[fecha]
	,[duracion]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[fecha]
	,[duracion]
 FROM [dbo].[vtaI_rhcCurriculum_Formacion_Duracion]
GO

 