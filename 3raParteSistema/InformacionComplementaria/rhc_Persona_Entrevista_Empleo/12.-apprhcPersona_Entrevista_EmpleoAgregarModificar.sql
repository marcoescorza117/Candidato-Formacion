CREATE PROCEDURE [app].[rhcPersona_Entrevista_EmpleoAgregarModificar]
	 @idPersona INT 
	,@formaEntero VARCHAR (1) 
	,@personaInvito VARCHAR (1) 
	,@motivoTrabajarInstitucion VARCHAR (1) 
	,@familiaresLaborandoInstitucion VARCHAR (1) 

	,@usuarioRealizo VARCHAR (60)
	,@dispositivo VARCHAR (150)
	,@direccionIP VARCHAR (40)
	,@app VARCHAR (50)

	,@idEntrevista BIGINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN
	BEGIN TRANSACTION 
	BEGIN TRY
		EXECUTE [dbo].[rhcUPI_DatosPersona_Entrevista_EmpleoAgregarModificar]
		 @idPersona
		,@formaEntero
		,@personaInvito
		,@motivoTrabajarInstitucion
		,@familiaresLaborandoInstitucion

		,@usuarioRealizo
		,@dispositivo
		,@direccionIP
		,@app
		
		,@idEntrevista OUTPUT  
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