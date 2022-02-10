CREATE PROCEDURE [app].[rhcPersona_ParienteAgregarModificar]
	 @idPersona INT 
	,@idTipoParentesco TINYINT 
	,@paterno VARCHAR (30) 
	,@materno VARCHAR (30) 
	,@nombres VARCHAR (40) 

	,@usuarioRealizo VARCHAR (60)
	,@dispositivo VARCHAR (150)
	,@direccionIP VARCHAR (40)
	,@app VARCHAR (50)

	,@idPersonaPariente INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN
	BEGIN TRANSACTION 
	BEGIN TRY
		EXECUTE [dbo].[rhcUPI_DatosPersona_ParienteAgregarModificar]
		 @idPersona
		,@idTipoParentesco
		,@paterno
		,@materno
		,@nombres

		,@usuarioRealizo
		,@dispositivo
		,@direccionIP
		,@app
		
		,@idPersonaPariente OUTPUT  
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