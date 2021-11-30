CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalAgregarDatos]
	 @idCurriculumFormacion INT
	,@idTipoFormacionAdicional SMALLINT 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_TipoFormacionAdicional] ON 
 	INSERT INTO rhc_Curriculum_Formacion_TipoFormacionAdicional 
	(
		 idTipoFormacionAdicional
		,idCurriculumFormacion
	)
	VALUES	(
		 @idTipoFormacionAdicional
		,@idCurriculumFormacion
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_TipoFormacionAdicional] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalModificarDatos]
	 @idCurriculumFormacion INT 
	,@idTipoFormacionAdicional SMALLINT 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Curriculum_Formacion_TipoFormacionAdicional SET 
		 idTipoFormacionAdicional = @idTipoFormacionAdicional

	WHERE idCurriculumFormacion = @idCurriculumFormacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalEliminarDatos]

	 @idCurriculumFormacion INT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	DELETE FROM rhc_Curriculum_Formacion_TipoFormacionAdicional 
	WHERE idCurriculumFormacion = @idCurriculumFormacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalAgregar]
	 @idCurriculumFormacion INT 
	,@idTipoFormacionAdicional SMALLINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalAgregarDatos]
		 @idCurriculumFormacion
		,@idTipoFormacionAdicional
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalEliminar]
	 @idCurriculumFormacion INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalEliminarDatos]
		 @idCurriculumFormacion 
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalModificar]
	 @idCurriculumFormacion INT 
	,@idTipoFormacionAdicional SMALLINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalModificarDatos]
		 @idCurriculumFormacion
		,@idTipoFormacionAdicional
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idTipoFormacionAdicional SMALLINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum_Formacion_TipoFormacionAdicional 
			 WHERE idCurriculumFormacion = @idCurriculumFormacion 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalAgregar]
		 @idCurriculumFormacion
		,@idTipoFormacionAdicional
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalModificar]
		 @idCurriculumFormacion
		,@idTipoFormacionAdicional
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_TipoFormacionAdicionalAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idTipoFormacionAdicional SMALLINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalAgregarModificar]
		 @idCurriculumFormacion
		,@idTipoFormacionAdicional
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END
GO
CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_TipoFormacionAdicionalEliminar]
	 @idCurriculumFormacion INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TipoFormacionAdicionalEliminar]
		 @idCurriculumFormacion 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

ALTER PROCEDURE [dbo].[rhcUPI_DatosCurriculum_Formacion_TipoFormacionAdicionalAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idTipoFormacionAdicional SMALLINT 

	,@usuarioRealizo VARCHAR (60)
	,@dispositivo VARCHAR (150)
	,@direccionIP VARCHAR (40)
	,@app VARCHAR (50)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN
	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_TipoFormacionAdicionalAgregarModificar]
		 @idCurriculumFormacion
		,@idTipoFormacionAdicional
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0 
	BEGIN
		RETURN
	END

	DECLARE  
		 @idBitacora BIGINT
		,@accion VARCHAR(50)
	SET @accion = 'DatosCurriculumFormacion.Agregar '

	EXECUTE rhcUPI_Datos_BitacoraAgregar
		 @usuarioRealizo
		,@dispositivo
		,@direccionIP
		,@accion
		,@app
		,@idBitacora OUTPUT
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0 
	BEGIN
		RETURN
	END
END

GO

CREATE PROCEDURE [dbo].[rhcUPI_DatosCurriculum_Formacion_TipoFormacionAdicionalEliminar]
	 @idCurriculumFormacion INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_TipoFormacionAdicionalEliminar]

		 @idCurriculumFormacion 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0 
	BEGIN
		RETURN
	END
END

GO

CREATE PROCEDURE [app].[rhcCurriculum_Formacion_TipoFormacionAdicionalAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idTipoFormacionAdicional SMALLINT 

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
		EXECUTE [dbo].[rhcUPI_DatosCurriculum_Formacion_TipoFormacionAdicionalAgregarModificar]
		 @idCurriculumFormacion
		,@idTipoFormacionAdicional

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

GO

CREATE PROCEDURE [app].[rhcCurriculum_Formacion_TipoFormacionAdicionalEliminar]
	 @idCurriculumFormacion INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN
	BEGIN TRANSACTION 
	BEGIN TRY
		EXECUTE [dbo].[rhcUPI_DatosCurriculum_Formacion_TipoFormacionAdicionalEliminar]

		 @idCurriculumFormacion 
		,@usuarioRealizo
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

GO

