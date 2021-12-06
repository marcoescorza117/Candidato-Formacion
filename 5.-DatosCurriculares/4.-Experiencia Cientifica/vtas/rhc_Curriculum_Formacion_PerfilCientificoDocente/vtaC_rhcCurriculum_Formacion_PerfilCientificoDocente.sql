	
CREATE VIEW [dbo].[vtaC_rhcCurriculum_Formacion_PerfilCientificoDocente](
	 [idCurriculumFormacion]
	,[idPerfilCientificoDocente]
	,[idTipoPerfilCientificoDocente]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[idPerfilCientificoDocente]
	,[idTipoPerfilCientificoDocente]
 FROM [dbo].[vtaI_rhcCurriculum_Formacion_PerfilCientificoDocente]
GO

 