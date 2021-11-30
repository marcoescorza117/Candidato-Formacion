CREATE VIEW	[dbo].[vtaT_rhcPerfilCientificoDocente](
	 [idPerfilCientificoDocente]
	,[perfilCientificoDocente]
	,[perfilCientificoDocenteAbreviado]
)
AS
SELECT
	 [idPerfilCientificoDocente]
	,[perfilCientificoDocente]
	,[perfilCientificoDocenteAbreviado]
FROM [dbo].[rhc_PerfilCientificoDocente]
GO
