
CREATE VIEW [dbo].[vtaI_rhcTipoDiscapacidad_Jerarquia](
 	 [idTipoDiscapacidad]
	,[idTipoDiscapacidadPadre]
)
AS
SELECT
	 [idTipoDiscapacidad]
	,[idTipoDiscapacidadPadre]
FROM [dbo].[vtaT_rhcTipoDiscapacidad_Jerarquia]
GO 
