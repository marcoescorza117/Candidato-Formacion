CREATE PROCEDURE [dbo].[rhcUPT_IdiomaAgregarDatos]
	 @idioma VARCHAR (100) 
	,@idIdioma SMALLINT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Idioma 
	(
		  idioma
	)
	VALUES
	(
		  @idioma
	)
	SET @idIdioma = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END