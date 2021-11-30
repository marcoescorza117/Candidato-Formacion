CREATE PROCEDURE [app].[rhcCurriculum_Formacion_AreaConocimientoAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idAreaConocimiento INT 

	,@usuarioRealizo VARCHAR (60)
	,@dispositivo VARCHAR (150)
	,@direccionIP VARCHAR (40)
	,@app VARCHAR (50)


	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN
	BEGIN TRANSACTION 
	BEGIN TRY
		EXECUTE [dbo].[rhcUPI_DatosCurriculum_Formacion_AreaConocimientoAgregarModificar]
		 @idCurriculumFormacion
		,@idAreaConocimiento

		,@usuarioRealizo
		,@dispositivo
		,@direccionIP
		,@app
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

go

