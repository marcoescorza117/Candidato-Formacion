
CREATE VIEW [dbo].[vtaI_rhcCurriculum_Experiencia_Cientifica](
     [idPersona]
	,[idCurriculum]
	,[idCurriculumFormacion]
	,[idTipoPerfilCientificoDocente]
	,[tipoPerfilCientificoDocente]
	,[idPerfilCientificoDocente]
	,[perfilCientificoDocente]
	,[fechaInicio]
	,[fechaTermino]
)
AS
SELECT 
	 rcc.idPersona
	,rcc.idCurriculum
	,rcc.idCurriculumFormacion
	,pcd.idTipoPerfilCientificoDocente
	,pcd.tipoPerfilCientificoDocente
	,pcd.idPerfilCientificoDocente
	,pcd.perfilCientificoDocente
	,cfp.fechaInicio
	,cfp.fechaTermino

from dbo.vtaI_rhcCurriculum_Formacion_PerfilCientificoDocente as pcd
INNER JOIN  dbo.vtaI_rhcCurriculum_Formacion_Periodicidad as cfp ON pcd.idCurriculumFormacion = cfp.idCurriculumFormacion
INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON pcd.idCurriculumFormacion = rcc.idCurriculumFormacion

GO