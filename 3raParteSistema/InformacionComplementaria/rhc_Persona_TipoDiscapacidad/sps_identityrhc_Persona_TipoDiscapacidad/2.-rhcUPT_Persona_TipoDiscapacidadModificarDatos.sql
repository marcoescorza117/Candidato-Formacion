CREATE PROCEDURE [dbo].[rhcUPT_Persona_TipoDiscapacidadModificarDatos]
	 @idPersona INT 
	,@idTipoDiscapacidad SMALLINT 

	,@idPersonaTipoDiscapacidad INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Persona_TipoDiscapacidad SET 
		 idPersona = @idPersona
		,idTipoDiscapacidad = @idTipoDiscapacidad
 

		WHERE idPersonaTipoDiscapacidad = @idPersonaTipoDiscapacidad 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END