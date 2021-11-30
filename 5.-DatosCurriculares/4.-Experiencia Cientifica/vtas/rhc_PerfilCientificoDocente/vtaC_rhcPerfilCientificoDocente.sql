CREATE VIEW [dbo].[vtaC_rhcPerfilCientificoDocente](
	 [idPerfilCientificoDocente]
	,[perfilCientificoDocente]
	,[perfilCientificoDocenteAbreviado]
)
AS
SELECT
	 [idPerfilCientificoDocente]
	,[perfilCientificoDocente]
	,[perfilCientificoDocenteAbreviado]
 FROM [dbo].[vtaI_rhcPerfilCientificoDocente]
GO