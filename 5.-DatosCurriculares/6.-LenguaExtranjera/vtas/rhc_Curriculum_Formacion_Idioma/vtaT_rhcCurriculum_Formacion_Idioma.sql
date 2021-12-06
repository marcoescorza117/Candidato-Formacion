CREATE VIEW	[dbo].[vtaT_rhcCurriculum_Formacion_Idioma](
	 [idCurriculumFormacion]
	,[idIdioma]
	,[idIdiomaTipoCertificacion]
	,[nivel]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[idIdioma]
	,[idIdiomaTipoCertificacion]
	,[nivel]
FROM [dbo].[rhc_Curriculum_Formacion_Idioma]
GO

 

