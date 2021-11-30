CREATE PROCEDURE [dbo].[rhcUPT_Idioma_TipoCertificacionEliminarDatos]

	 @idIdiomaTipoCertificacion SMALLINT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	DELETE FROM rhc_Idioma_TipoCertificacion 
	WHERE idIdiomaTipoCertificacion = @idIdiomaTipoCertificacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

