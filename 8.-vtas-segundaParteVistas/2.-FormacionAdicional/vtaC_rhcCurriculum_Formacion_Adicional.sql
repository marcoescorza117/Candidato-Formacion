
CREATE VIEW [dbo].[vtaC_rhcCurriculum_Formacion_Adicional](
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
	
FROM dbo.vtaI_rhcCurriculum_Formacion_Adicional