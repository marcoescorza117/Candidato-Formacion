CREATE PROCEDURE [app].[rhcPersona_TipoDiscapacidadAgregarModificar]
	 @idPersona INT 
	,@idTipoDiscapacidad SMALLINT 

	,@usuarioRealizo VARCHAR (60)
	,@dispositivo VARCHAR (150)
	,@direccionIP VARCHAR (40)
	,@app VARCHAR (50)

	,@idPersonaTipoDiscapacidad INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN
	BEGIN TRANSACTION 
	BEGIN TRY
		EXECUTE [dbo].[rhcUPI_DatosPersona_TipoDiscapacidadAgregarModificar]
		 @idPersona
		,@idTipoDiscapacidad

		,@usuarioRealizo
		,@dispositivo
		,@direccionIP
		,@app
		
		,@idPersonaTipoDiscapacidad OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT

	END TRY
	BEGIN CATCH
		SET @noError = ERROR_NUMBER()
		SET @mensaje = ERROR_MESSAGE()
	END CATCH
	IF ISNULL(@noError, 0) <> 0
	BEGIN
		IF @@TRANCOUNT <>0
		BEGIN
			ROLLBACK TRANSACTION
		END
		RETURN
	END
	COMMIT TRANSACTION 
END