--Formacion academica
SELECT * FROM dbo.vtaI_rhcCurriculum_Formacion_NivelEductaivo as cfn
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Pais rfp ON cfn.idCurriculumFormacion = rfp.idCurriculumFormacion --- uno a uno....
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Institucion rfi ON cfn.idCurriculumFormacion = rfi.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Estudio cfe ON  cfn.idCurriculumFormacion = cfe.idCurriculumFormacion
--INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON cfn.idCurriculumFormacion = rcc.idCurriculumFormacion
LEFT JOIN dbo.vtaI_rhcCurriculum_Formacion_AreaConocimiento rfa ON cfn.idCurriculumFormacion = rfa.idCurriculumFormacion


--Formacion adicional
SELECT * FROM dbo.vtaI_rhcCurriculum_Formacion_TipoFormacionAdicional as fpt
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Estudio as rfe ON fpt.idCurriculumFormacion = rfe.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Institucion as rci ON fpt.idCurriculumFormacion = rci.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON fpt.idCurriculumFormacion = rcc.idCurriculumFormacion
--LEFT JOIN dbo.vtaI_rhcCurriculum_Formacion_Documento as rfd ON  fpt.idCurriculumFormacion = rfd.idCurriculumFormacion


--Experiencia laboral
SELECT * FROM dbo.vtaI_rhcCurriculum_Formacion_ExperenciaLaboral as fel
INNER JOIN  dbo.vtaI_rhcCurriculum_Formacion_Periodicidad as cfp ON fel.idCurriculumFormacion = cfp.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Institucion as rci ON fel.idCurriculumFormacion = rci.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Pais rfp ON fel.idCurriculumFormacion = rfp.idCurriculumFormacion --- uno a uno....
--INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON fel.idCurriculumFormacion = rcc.idCurriculumFormacion


--Experiencia cientifica
SELECT * from dbo.vtaI_rhcCurriculum_Formacion_PerfilCientificoDocente as pcd
INNER JOIN  dbo.vtaI_rhcCurriculum_Formacion_Periodicidad as cfp ON pcd.idCurriculumFormacion = cfp.idCurriculumFormacion
--INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON pcd.idCurriculumFormacion = rcc.idCurriculumFormacion


--Formacion TICS 
SELECT * FROM dbo.vtaI_rhcCurriculum_Formacion_TICS as cft
INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON cft.idCurriculumFormacion = rcc.idCurriculumFormacion
--INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON pcd.idCurriculumFormacion = rcc.idCurriculumFormacion


--Lengua extranjera
SELECT * FROM dbo.vtaI_rhcCurriculum_Formacion_Idioma as cfi
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Institucion as rci ON cfi.idCurriculumFormacion = rci.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Duracion as cfd ON cfi.idCurriculumFormacion = cfd.idCurriculumFormacion
--INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON cfi.idCurriculumFormacion = rcc.idCurriculumFormacion


--FORMACION DOCUMENTO
SELECT * FROM dbo.vtaI_rhcCurriculum_Formacion as rfc
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Documento as cfd ON rfc.idCurriculumFormacion = cfd.idCurriculumFormacion -- Uno a uno
INNER JOIN dbo.vtaI_rhcDocumento as rhd ON  cfd.idDocumento = rhd.idDocumento
--INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON rfc.idCurriculumFormacion = rcc.idCurriculumFormacion