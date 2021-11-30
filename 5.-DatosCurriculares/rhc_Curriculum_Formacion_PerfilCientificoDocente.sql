CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteAgregarDatos]
	 @idCurriculumFormacion INT
	,@idPerfilCientificoDocente SMALLINT 
	,@idTipoPerfilCientificoDocente SMALLINT 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_PerfilCientificoDocente] ON 
 	INSERT INTO rhc_Curriculum_Formacion_PerfilCientificoDocente 
	(
		 idPerfilCientificoDocente
		,idTipoPerfilCientificoDocente
		,idCurriculumFormacion
	)
	VALUES	(
		 @idPerfilCientificoDocente
		,@idTipoPerfilCientificoDocente
		,@idCurriculumFormacion
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_PerfilCientificoDocente] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteModificarDatos]
	 @idCurriculumFormacion INT 
	,@idPerfilCientificoDocente SMALLINT 
	,@idTipoPerfilCientificoDocente SMALLINT 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Curriculum_Formacion_PerfilCientificoDocente SET 
		 idPerfilCientificoDocente = @idPerfilCientificoDocente
		,idTipoPerfilCientificoDocente = @idTipoPerfilCientificoDocente

	WHERE idCurriculumFormacion = @idCurriculumFormacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteEliminarDatos]

	 @idCurriculumFormacion INT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	DELETE FROM rhc_Curriculum_Formacion_PerfilCientificoDocente 
	WHERE idCurriculumFormacion = @idCurriculumFormacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteAgregar]
	 @idCurriculumFormacion INT 
	,@idPerfilCientificoDocente SMALLINT 
	,@idTipoPerfilCientificoDocente SMALLINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteAgregarDatos]
		 @idCurriculumFormacion
		,@idPerfilCientificoDocente
		,@idTipoPerfilCientificoDocente
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteEliminar]
	 @idCurriculumFormacion INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteEliminarDatos]
		 @idCurriculumFormacion 
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteModificar]
	 @idCurriculumFormacion INT 
	,@idPerfilCientificoDocente SMALLINT 
	,@idTipoPerfilCientificoDocente SMALLINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteModificarDatos]
		 @idCurriculumFormacion
		,@idPerfilCientificoDocente
		,@idTipoPerfilCientificoDocente
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idPerfilCientificoDocente SMALLINT 
	,@idTipoPerfilCientificoDocente SMALLINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum_Formacion_PerfilCientificoDocente 
			 WHERE idCurriculumFormacion = @idCurriculumFormacion 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteAgregar]
		 @idCurriculumFormacion
		,@idPerfilCientificoDocente
		,@idTipoPerfilCientificoDocente
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteModificar]
		 @idCurriculumFormacion
		,@idPerfilCientificoDocente
		,@idTipoPerfilCientificoDocente
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_PerfilCientificoDocenteAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idPerfilCientificoDocente SMALLINT 
	,@idTipoPerfilCientificoDocente SMALLINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteAgregarModificar]
		 @idCurriculumFormacion
		,@idPerfilCientificoDocente
		,@idTipoPerfilCientificoDocente
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END
GO

CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_PerfilCientificoDocenteEliminar]
	 @idCurriculumFormacion INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PerfilCientificoDocenteEliminar]
		 @idCurriculumFormacion 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

CREATE PROCEDURE [dbo].[rhcUPI_DatosCurriculum_Formacion_PerfilCientificoDocenteAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idPerfilCientificoDocente SMALLINT 
	,@idTipoPerfilCientificoDocente SMALLINT 

	,@usuarioRealizo VARCHAR (60)
	,@dispositivo VARCHAR (150)
	,@direccionIP VARCHAR (40)
	,@app VARCHAR (50)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN
	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_PerfilCientificoDocenteAgregarModificar]
		 @idCurriculumFormacion
		,@idPerfilCientificoDocente
		,@idTipoPerfilCientificoDocente
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
	SET @accion = 'nombreAccion.Agregar '

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

CREATE PROCEDURE [dbo].[rhcUPI_DatosCurriculum_Formacion_PerfilCientificoDocenteEliminar]
	 @idCurriculumFormacion INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_PerfilCientificoDocenteEliminar]

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

CREATE PROCEDURE [app].[rhcCurriculum_Formacion_PerfilCientificoDocenteAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idPerfilCientificoDocente SMALLINT 
	,@idTipoPerfilCientificoDocente SMALLINT 

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
		EXECUTE [dbo].[rhcUPI_DatosCurriculum_Formacion_PerfilCientificoDocenteAgregarModificar]
		 @idCurriculumFormacion
		,@idPerfilCientificoDocente
		,@idTipoPerfilCientificoDocente

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

CREATE PROCEDURE [app].[rhcCurriculum_Formacion_PerfilCientificoDocenteEliminar]
	 @idCurriculumFormacion INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN
	BEGIN TRANSACTION 
	BEGIN TRY
		EXECUTE [dbo].[rhcUPI_DatosCurriculum_Formacion_PerfilCientificoDocenteEliminar]

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

