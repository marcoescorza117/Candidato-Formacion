use siiaRecursosHumanosCandidatos

-- Datos de rhcCurriculum
-- Datos de Formacion Nivel Educativo
-- Datos de Formacion Pais
-- Datos de Formacion Institucion
-- Datos de Formacion Estudio
-- Datos de Formacion Area de conocimiento
SELECT
 *
FROM dbo.vtaI_rhcCurriculum as rc
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion as rcf ON rc.idCurriculum = rcf.idCurriculum --Uno a muchos...
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_NivelEductaivo rfn ON rcf.idCurriculumFormacion = rfn.idCurriculumFormacion -- Uno a uno
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Pais rfp ON rcf.idCurriculumFormacion = rfp.idCurriculumFormacion --- uno a uno....
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Institucion rfi ON rcf.idCurriculumFormacion = rfi.idCurriculumFormacion -- uno a uno
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Estudio rfe ON rcf.idCurriculumFormacion = rfe.idCurriculumFormacion -- uno a uno
--INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_AreaConocimiento rfa ON rfa.idCurriculumFormacion = rfa.idCurriculumFormacion
LEFT JOIN dbo.vtaI_rhcCurriculum_Formacion_AreaConocimiento rfa ON rcf.idCurriculumFormacion = rfa.idCurriculumFormacion
WHERE idPersona = 1193











