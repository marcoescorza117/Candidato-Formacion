CREATE PROCEDURE [dbo].[rhcUPT_Persona_Pariente_AdscripcionModificarDatos]
	 @idPersonaPariente INT 
	,@adscripcion VARCHAR (120) 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Persona_Pariente_Adscripcion SET 
		 adscripcion = @adscripcion

	WHERE idPersonaPariente = @idPersonaPariente 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

