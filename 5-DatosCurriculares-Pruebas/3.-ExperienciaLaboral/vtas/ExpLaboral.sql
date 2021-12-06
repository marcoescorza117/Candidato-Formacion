
--Vista para formacion Experiencia


Use siiaRecursosHumanosCandidatos

SELECT
   *
FROM dbo.vtaI_rhcCurriculum as rc
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion as rcf ON rc.idCurriculum = rcf.idCurriculum --Uno a muchos...
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Pais as rcp ON rcf.idCurriculumFormacion = rcp.idCurriculumFormacion --formacion pais
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Institucion as rfi ON rcf.idCurriculumFormacion = rfi.idCurriculumFormacion -- formacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Periodicidad as rfp ON rcf.idCurriculumFormacion = rfp.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_ExperenciaLaboral as rfl ON rcf.idCurriculumFormacion = rfl.idCurriculumFormacion


--WHERE idPersona = 1020