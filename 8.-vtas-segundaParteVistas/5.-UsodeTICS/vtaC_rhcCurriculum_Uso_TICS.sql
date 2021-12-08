
CREATE VIEW [dbo].[vtaC_rhcCurriculum_Uso_TICS](
	 [idPersona]
	,[idCurriculum]
	,[idCurriculumFormacion]
	,[idTipoTICS]
	,[tipoTICS]
	,[herramientas]
)
AS
SELECT

	 [idPersona]
	,[idCurriculum]
	,[idCurriculumFormacion]
	,[idTipoTICS]
	,[tipoTICS]
	,[herramientas]
	
FROM dbo.vtaI_rhcCurriculum_Uso_TICS