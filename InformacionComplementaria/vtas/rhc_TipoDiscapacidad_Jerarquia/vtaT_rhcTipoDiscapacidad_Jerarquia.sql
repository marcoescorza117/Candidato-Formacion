CREATE VIEW	[dbo].[vtaT_rhcTipoDiscapacidad_Jerarquia](
	 [idTipoDiscapacidad]
	,[idTipoDiscapacidadPadre]
)
AS
SELECT
	 [idTipoDiscapacidad]
	,[idTipoDiscapacidadPadre]
FROM [dbo].[rhc_TipoDiscapacidad_Jerarquia]
GO

 


 