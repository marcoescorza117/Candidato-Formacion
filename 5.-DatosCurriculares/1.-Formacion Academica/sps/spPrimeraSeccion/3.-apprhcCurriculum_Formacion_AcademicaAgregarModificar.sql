CREATE PROCEDURE [app].[rhcCurriculum_Formacion_AcademicaAgregarModificar]
	 @idPersona INT
    ,@idNivelEducativo TINYINT
    ,@idPais INT
    ,@idInstitucion INT
	,@institucion VARCHAR (250)
	,@idProgramaEducativo INT
	,@estudio VARCHAR (150)
	,@usuarioRealizo varchar(60)
	,@dispositivo varchar(150)
	,@direccionIP varchar(40)
	,@app varchar(50)

    ,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN
	BEGIN TRANSACTION
	BEGIN TRY
		EXECUTE [dbo].[rhcUPI_DatosCurriculum_Formacion_AcademicaAgregarModificar]
	         @idPersona 
			,@idNivelEducativo
			,@idPais 
			,@idInstitucion
			,@institucion
			,@idProgramaEducativo
			,@estudio 
			,@usuarioRealizo
			,@dispositivo 
			,@direccionIP
			,@app
			
			,@idCurriculumFormacion OUTPUT
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

