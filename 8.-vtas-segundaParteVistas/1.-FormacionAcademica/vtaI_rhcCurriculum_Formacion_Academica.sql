
CREATE VIEW [dbo].[vtaI_rhcCurriculum_Formacion_Academica](
	 [idPersona]
    ,[idCurriculum]
    ,[idCurriculumFormacion]
    ,[idNivelEducativo]
    ,[nivelEducativo]
    ,[idPais]
    ,[idInstitucion]
    ,[institucion]
    ,[nombreInstitucion]
    ,[idProgramaEducativo]
    ,[estudio]
    ,[nombreProgramaEducativo]
    ,[idAreaConocimiento]
    ,[areaConocimiento]
)
AS
SELECT
		rcc.idPersona
     ,rcc.idCurriculum
	 ,rcc.idCurriculumFormacion
	 ,cfn.idNivelEducativo
	 ,cfn.nivelEducativo
	 ,rfp.idPais
	 ,rfi.idInstitucion
	 ,rfi.institucion
	 ,rfi.nombreInstitucion
	 ,cfe.idProgramaEducativo
	 ,cfe.estudio
	 ,cfe.nombreProgramaEducativo
	 ,rfa.idAreaConocimiento
	 ,rfa.areaConocimiento

FROM dbo.vtaI_rhcCurriculum_Formacion_NivelEductaivo as cfn
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Pais rfp ON cfn.idCurriculumFormacion = rfp.idCurriculumFormacion 
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Institucion rfi ON cfn.idCurriculumFormacion = rfi.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Estudio cfe ON  cfn.idCurriculumFormacion = cfe.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON cfn.idCurriculumFormacion = rcc.idCurriculumFormacion
LEFT JOIN dbo.vtaI_rhcCurriculum_Formacion_AreaConocimiento rfa ON cfn.idCurriculumFormacion = rfa.idCurriculumFormacion

GO