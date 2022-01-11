CREATE PROCEDURE [dbo].[rhcUPT_Persona_LenguaIndigenaModificarDatos]
	 @idPersona INT 
	,@idLenguaIndigena SMALLINT 

	,@idPersonaLenguaIndigena INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Persona_LenguaIndigena SET 
		 idPersona = @idPersona
		,idLenguaIndigena = @idLenguaIndigena
 

		WHERE idPersonaLenguaIndigena = @idPersonaLenguaIndigena 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END