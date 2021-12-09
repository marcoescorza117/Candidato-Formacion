
CREATE VIEW [dbo].[vtaC_rhcCurriculum_Lengua_Extranjera](
	 [idPersona]
	,[idCurriculum]
	,[idCurriculumFormacion]
	,[idIdioma]
	,[idioma]
	,[idIdiomaTipoCertificacion]
	,[tipoCertificacion]
	,[nivel]
	,[idInstitucion]
	,[nombreInstitucion]
	,[institucion]
	,[duracion]
	,[fecha]
)
AS
SELECT

	 [idPersona]
	,[idCurriculum]
	,[idCurriculumFormacion]
	,[idIdioma]
	,[idioma]
	,[idIdiomaTipoCertificacion]
	,[tipoCertificacion]
	,[nivel]
	,[idInstitucion]
	,[nombreInstitucion]
	,[institucion]
	,[duracion]
	,[fecha]
	
FROM dbo.vtaI_rhcCurriculum_Lengua_Extranjera