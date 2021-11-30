CREATE PROCEDURE [dbo].[rhcUPT_Idioma_TipoCertificacionAgregarDatos]
	 @idIdiomaTipoCertificacion SMALLINT
	,@idIdioma SMALLINT 
	,@tipoCertificacion VARCHAR (150) 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Idioma_TipoCertificacion] ON 
 	INSERT INTO rhc_Idioma_TipoCertificacion 
	(
		 idIdioma
		,tipoCertificacion
		,idIdiomaTipoCertificacion
	)
	VALUES	(
		 @idIdioma
		,@tipoCertificacion
		,@idIdiomaTipoCertificacion
	)
	SET IDENTITY_INSERT [rhc_Idioma_TipoCertificacion] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

