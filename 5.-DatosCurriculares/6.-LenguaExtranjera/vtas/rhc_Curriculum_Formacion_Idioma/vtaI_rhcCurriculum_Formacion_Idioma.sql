CREATE VIEW	[dbo].[vtaI_rhcCurriculum_Formacion_Idioma](
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
FROM [dbo].[vtaT_rhcCurriculum_Formacion_Idioma]
GO 
