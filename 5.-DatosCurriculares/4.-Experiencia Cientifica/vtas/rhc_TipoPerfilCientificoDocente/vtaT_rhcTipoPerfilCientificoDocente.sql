CREATE VIEW	[dbo].[vtaT_rhcTipoPerfilCientificoDocente](
	 [idTipoPerfilCientificoDocente]
	,[idPerfilCientificoDocente]
	,[tipoPerfilCientificoDocente]
)
AS
SELECT
	 [idTipoPerfilCientificoDocente]
	,[idPerfilCientificoDocente]
	,[tipoPerfilCientificoDocente]
FROM [dbo].[rhc_TipoPerfilCientificoDocente]
GO
