
CREATE VIEW [dbo].[vtaC_rhcCurriculum_Formacion_Academica](
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
	
	
FROM dbo.vtaI_rhcCurriculum_Formacion_Academica