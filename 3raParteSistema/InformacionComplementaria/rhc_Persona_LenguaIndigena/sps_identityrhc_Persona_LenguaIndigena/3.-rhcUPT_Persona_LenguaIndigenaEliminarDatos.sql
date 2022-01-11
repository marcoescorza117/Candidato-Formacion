CREATE PROCEDURE [dbo].[rhcUPT_Persona_LenguaIndigenaEliminarDatos]

	 @idPersonaLenguaIndigena INT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	DELETE FROM rhc_Persona_LenguaIndigena 
	WHERE idPersonaLenguaIndigena = @idPersonaLenguaIndigena 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END