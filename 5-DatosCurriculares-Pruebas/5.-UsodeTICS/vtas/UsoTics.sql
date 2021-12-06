
Use siiaRecursosHumanosCandidatos
SELECT rc.idCurriculum,
       rc.idPersona,
       rcf.idCurriculumFormacion,
       rcf.idCurriculum,
       rft.idCurriculumFormacion,
       idTipoTICS,
       herramientas
FROM dbo.vtaI_rhcCurriculum as rc
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion as rcf ON rc.idCurriculum = rcf.idCurriculum --Uno a muchos...
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_TICS as rft ON rcf.idCurriculumFormacion = rft.idCurriculumFormacion
