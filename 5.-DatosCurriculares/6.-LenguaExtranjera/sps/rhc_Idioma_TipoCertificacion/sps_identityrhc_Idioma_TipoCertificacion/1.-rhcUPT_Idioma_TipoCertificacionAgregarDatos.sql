CREATE PROCEDURE [dbo].[rhcUPT_Idioma_TipoCertificacionAgregarDatos]
	 @idIdioma SMALLINT 
	,@tipoCertificacion VARCHAR (150) 
	,@idIdiomaTipoCertificacion SMALLINT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Idioma_TipoCertificacion 
	(
		  idIdioma
		 ,tipoCertificacion
	)
	VALUES
	(
		  @idIdioma
		 ,@tipoCertificacion
	)
	SET @idIdiomaTipoCertificacion = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END