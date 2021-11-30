
CREATE VIEW [dbo].[vtaC_rhcTipoPerfilCientificoDocente](
	 [idTipoPerfilCientificoDocente]
	,[idPerfilCientificoDocente]
	,[tipoPerfilCientificoDocente]
)
AS
SELECT
	 [idTipoPerfilCientificoDocente]
	,[idPerfilCientificoDocente]
	,[tipoPerfilCientificoDocente]
 FROM [dbo].[vtaI_rhcTipoPerfilCientificoDocente]
GO