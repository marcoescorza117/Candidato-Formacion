
CREATE VIEW [dbo].[vtaI_rhcCurriculum_Formacion_Adicional](
     [idPersona]
    ,[idCurriculum]
    ,[idCurriculumFormacion]
    ,[idTipoFormacionAdicional]
    ,[tipoFormacionAdicional]
    ,[idProgramaEducativo]
    ,[nombreProgramaEducativo]
    ,[estudio]
    ,[idInstitucion]
    ,[institucion]
    ,[nombreInstitucion]
)
AS
SELECT   
         rcc.idPersona
		,rcc.idCurriculum
		,rcc.idCurriculumFormacion
		,fpt.idTipoFormacionAdicional
		,fpt.tipoFormacionAdicional
		,rfe.idProgramaEducativo
		,rfe.nombreProgramaEducativo
		,rfe.estudio
		,rci.idInstitucion
		,rci.institucion
		,rci.nombreInstitucion

FROM dbo.vtaI_rhcCurriculum_Formacion_TipoFormacionAdicional as fpt
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Estudio as rfe ON fpt.idCurriculumFormacion = rfe.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Institucion as rci ON fpt.idCurriculumFormacion = rci.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON fpt.idCurriculumFormacion = rcc.idCurriculumFormacion

GO