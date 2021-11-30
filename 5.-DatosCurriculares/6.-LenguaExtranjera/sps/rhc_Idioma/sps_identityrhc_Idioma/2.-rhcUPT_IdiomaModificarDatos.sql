CREATE PROCEDURE [dbo].[rhcUPT_IdiomaModificarDatos]
	 @idioma VARCHAR (100) 

	,@idIdioma SMALLINT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Idioma SET 
		 idioma = @idioma
 

		WHERE idIdioma = @idIdioma 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END