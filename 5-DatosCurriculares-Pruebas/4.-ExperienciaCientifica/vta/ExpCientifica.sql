
--Vista para formacion Experiencia Cientifica


Use siiaRecursosHumanosCandidatos

SELECT
   *
FROM dbo.vtaI_rhcCurriculum as rc
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion as rcf ON rc.idCurriculum = rcf.idCurriculum --Uno a muchos...
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_PerfilCientificoDocente as rpcd ON rcf.idCurriculumFormacion = rpcd.idCurriculumFormacion--- Perfil cientifico
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Periodicidad as rcfp ON rcf.idCurriculumFormacion = rcfp.idCurriculumFormacion -- formacion periocidad

LEFT JOIN dbo.vtaI_rhcCurriculum_Formacion_Documento as rfd ON rcf.idCurriculumFormacion = rfd.idCurriculumFormacion -- formacion documento    