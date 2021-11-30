CREATE PROCEDURE [dbo].[rhcUPT_Idioma_TipoCertificacionModificarDatos]
	 @idIdioma SMALLINT 
	,@tipoCertificacion VARCHAR (150) 

	,@idIdiomaTipoCertificacion SMALLINT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Idioma_TipoCertificacion SET 
		 idIdioma = @idIdioma
		,tipoCertificacion = @tipoCertificacion
 

		WHERE idIdiomaTipoCertificacion = @idIdiomaTipoCertificacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END