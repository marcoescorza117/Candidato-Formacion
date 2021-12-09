
CREATE VIEW [dbo].[vtaC_rhcCurriculum_Experiencia_Cientifica](
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

	 [idPersona]
	,[idCurriculum]
	,[idCurriculumFormacion]
	,[idTipoPerfilCientificoDocente]
	,[tipoPerfilCientificoDocente]
	,[idPerfilCientificoDocente]
	,[perfilCientificoDocente]
	,[fechaInicio]
	,[fechaTermino]
	
FROM dbo.vtaI_rhcCurriculum_Experiencia_Cientifica