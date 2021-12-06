use siiaRecursosHumanosCandidatos

-- Datos de rhcCurriculum
-- Datos de Curriculum Formacion
-- Datos de Formacion Documento
-- Datos de infoDocumento
SELECT 
* FROM dbo.vtaI_rhcCurriculum as rc
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion as rcf ON rc.idCurriculum = rcf.idCurriculum --Uno a muchos... Tabla pivote

INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_TipoFormacionAdicional as fta  ON rcf.idCurriculumFormacion = fta.idCurriculumFormacion --formacion adicional
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Estudio as rfe ON rcf.idCurriculumFormacion = rfe.idCurriculumFormacion --Formacion Estudio

INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Institucion rci ON rcf.idCurriculumFormacion = rci.idCurriculumFormacion -- curriculum formacion Institucion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Duracion fss ON  rcf.idCurriculumFormacion = fss.idCurriculumFormacion --formacion duracion




--INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Documento as cfd ON rcf.idCurriculumFormacion = cfd.idCurriculumFormacion -- Uno a uno
--INNER JOIN dbo.vtaI_rhcDocumento as rhd ON  cfd.idDocumento = rhd.idDocumento

SELECT * froM dbo.vtaI_rhcCurriculum_Formacion_TipoFormacionAdicional as fta
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Documento as cfd ON fta.idCurriculumFormacion = cfd.idCurriculumFormacion -- Uno a uno
INNER JOIN dbo.vtaI_rhcDocumento as rhd ON  cfd.idDocumento = rhd.idDocumento