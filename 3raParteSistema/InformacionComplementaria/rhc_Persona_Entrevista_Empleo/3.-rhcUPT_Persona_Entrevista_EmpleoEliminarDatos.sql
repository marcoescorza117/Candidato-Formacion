CREATE PROCEDURE [dbo].[rhcUPT_Persona_Entrevista_EmpleoEliminarDatos]

	 @idEntrevista BIGINT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	DELETE FROM rhc_Persona_Entrevista_Empleo 
	WHERE idEntrevista = @idEntrevista 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END