CREATE PROCEDURE [dbo].[rhcUPT_Persona_Pariente_AdscripcionAgregarDatos]
	 @idPersonaPariente INT
	,@adscripcion VARCHAR (120) 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	--SET IDENTITY_INSERT [rhc_Persona_Pariente_Adscripcion] ON 	
 	INSERT INTO rhc_Persona_Pariente_Adscripcion 
	(
		 adscripcion
		,idPersonaPariente
	)
	VALUES	(
		 @adscripcion
		,@idPersonaPariente
	)
	--SET IDENTITY_INSERT [rhc_Persona_Pariente_Adscripcion] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

