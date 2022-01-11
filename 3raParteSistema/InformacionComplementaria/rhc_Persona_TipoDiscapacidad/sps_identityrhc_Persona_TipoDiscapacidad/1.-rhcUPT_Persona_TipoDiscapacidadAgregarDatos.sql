CREATE PROCEDURE [dbo].[rhcUPT_Persona_TipoDiscapacidadAgregarDatos]
	 @idPersona INT 
	,@idTipoDiscapacidad SMALLINT 
	,@idPersonaTipoDiscapacidad INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Persona_TipoDiscapacidad 
	(
		  idPersona
		 ,idTipoDiscapacidad
	)
	VALUES
	(
		  @idPersona
		 ,@idTipoDiscapacidad
	)
	SET @idPersonaTipoDiscapacidad = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END