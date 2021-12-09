
CREATE VIEW [dbo].[vtaI_rhcCurriculum_Experiencia_Laboral](
     [idPersona]
    ,[idCurriculum]
    ,[idCurriculumFormacion]
    ,[puesto]
    ,[actividades]
    ,[fechaInicio]
    ,[fechaTermino]
    ,[idInstitucion]
    ,[institucion]
    ,[nombreInstitucion]
    ,[idPais]
)
AS
SELECT 

     rcc.[idPersona]
    ,rcc.[idCurriculum]
    ,rcc.[idCurriculumFormacion]
    ,fel.[puesto]
    ,fel.[actividades]
    ,cfp.[fechaInicio]
    ,cfp.[fechaTermino]
    ,rci.[idInstitucion]
    ,rci.[institucion]
    ,rci.[nombreInstitucion]
    ,rfp.[idPais]

FROM dbo.vtaI_rhcCurriculum_Formacion_ExperenciaLaboral as fel
INNER JOIN  dbo.vtaI_rhcCurriculum_Formacion_Periodicidad as cfp ON fel.idCurriculumFormacion = cfp.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Institucion as rci ON fel.idCurriculumFormacion = rci.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Pais rfp ON fel.idCurriculumFormacion = rfp.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON fel.idCurriculumFormacion = rcc.idCurriculumFormacion

GO