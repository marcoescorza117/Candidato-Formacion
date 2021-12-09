
CREATE VIEW [dbo].[vtaI_rhcCurriculum_Lengua_Extranjera](
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

     rcc.[idPersona]
	,rcc.[idCurriculum]
	,rcc.[idCurriculumFormacion]
	,cfi.[idIdioma]
	,cfi.[idioma]
	,cfi.[idIdiomaTipoCertificacion]
	,cfi.[tipoCertificacion]
	,cfi.[nivel]
	,rci.[idInstitucion]
	,rci.[nombreInstitucion]
	,rci.[institucion]
	,cfd.[duracion]
	,cfd.[fecha]

FROM dbo.vtaI_rhcCurriculum_Formacion_Idioma as cfi
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Institucion as rci ON cfi.idCurriculumFormacion = rci.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Duracion as cfd ON cfi.idCurriculumFormacion = cfd.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON cfi.idCurriculumFormacion = rcc.idCurriculumFormacion

GO