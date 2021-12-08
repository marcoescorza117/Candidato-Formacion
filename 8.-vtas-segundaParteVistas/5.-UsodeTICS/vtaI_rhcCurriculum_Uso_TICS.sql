
CREATE VIEW [dbo].[vtaI_rhcCurriculum_Uso_TICS](
     [idPersona]
	,[idCurriculum]
	,[idCurriculumFormacion]
	,[idTipoTICS]
	,[tipoTICS]
	,[herramientas]
)
AS
SELECT 
	 rcc.idPersona
	,rcc.idCurriculum
	,rcc.idCurriculumFormacion
	,cft.idTipoTICS
	,cft.tipoTICS
	,cft.herramientas

FROM dbo.vtaI_rhcCurriculum_Formacion_TICS as cft
INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON cft.idCurriculumFormacion = rcc.idCurriculumFormacion

GO