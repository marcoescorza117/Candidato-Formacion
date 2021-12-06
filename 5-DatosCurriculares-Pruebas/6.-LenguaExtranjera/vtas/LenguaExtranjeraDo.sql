
--Vista para mostrar idiomas y certificado
use siiaRecursosHumanosCandidatos

SELECT
* FROM dbo.vtaI_rhcCurriculum as rc
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion as rcf ON rc.idCurriculum = rcf.idCurriculum --Uno a muchos...
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Idioma as rci ON rcf.idCurriculumFormacion = rci.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Documento as cfd ON rcf.idCurriculumFormacion = cfd.idCurriculumFormacion -- Uno a uno
INNER JOIN dbo.vtaI_rhcDocumento as rhd ON  cfd.idDocumento = rhd.idDocumento
--WHERE idPersona = 1193

