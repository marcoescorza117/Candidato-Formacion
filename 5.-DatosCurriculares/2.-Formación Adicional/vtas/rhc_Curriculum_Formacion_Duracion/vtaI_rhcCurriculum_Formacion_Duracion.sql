
CREATE VIEW	[dbo].[vtaI_rhcCurriculum_Formacion_Duracion](
	 [idCurriculumFormacion]
	,[fecha]
	,[duracion]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[fecha]
	,[duracion]
FROM [dbo].[vtaT_rhcCurriculum_Formacion_Duracion]
GO 
