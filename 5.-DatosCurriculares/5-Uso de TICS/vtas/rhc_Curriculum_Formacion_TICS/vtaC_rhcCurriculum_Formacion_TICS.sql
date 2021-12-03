
CREATE VIEW [dbo].[vtaC_rhcCurriculum_Formacion_TICS](
	 [idCurriculumFormacion]
	,[idTipoTICS]
	,[herramientas]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[idTipoTICS]
	,[herramientas]
 FROM [dbo].[vtaI_rhcCurriculum_Formacion_TICS]
GO

 