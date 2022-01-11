CREATE PROCEDURE [dbo].[rhcUPT_Persona_TipoDiscapacidadEliminarDatos]

	 @idPersonaTipoDiscapacidad INT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	DELETE FROM rhc_Persona_TipoDiscapacidad 
	WHERE idPersonaTipoDiscapacidad = @idPersonaTipoDiscapacidad 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END