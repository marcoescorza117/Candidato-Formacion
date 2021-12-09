
CREATE VIEW [dbo].[vtaC_rhcCurriculum_Experiencia_Laboral](
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
	
FROM dbo.vtaI_rhcCurriculum_Experiencia_Laboral