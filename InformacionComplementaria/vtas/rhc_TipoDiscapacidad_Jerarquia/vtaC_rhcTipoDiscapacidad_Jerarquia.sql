CREATE VIEW [dbo].[vtaC_rhcTipoDiscapacidad_Jerarquia](
	 [idTipoDiscapacidad]
	,[idTipoDiscapacidadPadre]
)
AS
SELECT
	 [idTipoDiscapacidad]
	,[idTipoDiscapacidadPadre]
 FROM [dbo].[vtaI_rhcTipoDiscapacidad_Jerarquia]
GO
