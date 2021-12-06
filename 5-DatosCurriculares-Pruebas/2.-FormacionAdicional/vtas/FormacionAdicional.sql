
--Datos de formacion adicional
use siiaRecursosHumanosCandidatos



SELECT
 *
FROM dbo.vtaI_rhcCurriculum as rc
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion as rcf ON rc.idCurriculum = rcf.idCurriculum --Uno a muchos...
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_TipoFormacionAdicional as rca ON rcf.idCurriculumFormacion = rca.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Estudio as rfe ON rcf.idCurriculumFormacion = rfe.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Institucion as rci ON rcf.idCurriculumFormacion = rci.idCurriculumFormacion
--INNER JOIN 
LEFT JOIN dbo.vtaI_rhcCurriculum_Formacion_Documento as rfd ON  rcf.idCurriculumFormacion = rfd.idCurriculumFormacion
