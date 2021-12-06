CREATE VIEW	[dbo].[vtaT_rhcCurriculum_Formacion_PerfilCientificoDocente](
	 [idCurriculumFormacion]
	,[idPerfilCientificoDocente]
	,[idTipoPerfilCientificoDocente]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[idPerfilCientificoDocente]
	,[idTipoPerfilCientificoDocente]
FROM [dbo].[rhc_Curriculum_Formacion_PerfilCientificoDocente]
GO

 

