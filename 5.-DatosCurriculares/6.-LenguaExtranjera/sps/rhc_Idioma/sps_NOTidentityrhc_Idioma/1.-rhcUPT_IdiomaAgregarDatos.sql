CREATE PROCEDURE [dbo].[rhcUPT_IdiomaAgregarDatos]
	 @idIdioma SMALLINT
	,@idioma VARCHAR (100) 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Idioma] ON 
 	INSERT INTO rhc_Idioma 
	(
		 idioma
		,idIdioma
	)
	VALUES	(
		 @idioma
		,@idIdioma
	)
	SET IDENTITY_INSERT [rhc_Idioma] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

