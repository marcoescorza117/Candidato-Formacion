CREATE PROCEDURE dbo.[rhcUPI_DatosCurriculum_Experiencia_CientificaAgregarModificar]

	 @idPersona INT
	,@idPerfilCientificoDocente SMALLINT
	,@idTipoPerfilCientificoDocente SMALLINT
	,@fechaInicio DATETIME
	,@fechaTermino DATETIME

	,@usuarioRealizo varchar(60)
	,@dispositivo varchar(150)
	,@direccionIP varchar(40)
	,@app varchar(50)

    ,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN

	DECLARE @idCurriculum INT --declaramos el idCurriculum

	EXECUTE [dbo].[rhcUPI_Curriculum_Experiencia_CientificaAgregarModificarValidar]
	     @idPerfilCientificoDocente
	    ,@idTipoPerfilCientificoDocente
        ,@noError OUTPUT
        ,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0
	BEGIN
		RETURN
	END

    EXECUTE [dbo].[rhcCurriculumExistenciaValidar] --Verifica que el curriculum exista, de lo contrario lo genera y lo agrega en la variable declarada
         @idPersona
        ,@usuarioRealizo
        ,@idCurriculum OUTPUT
        ,@noError OUTPUT
        ,@mensaje OUTPUT

    IF ISNULL(@noError,0) != 0
	BEGIN
		RETURN
	END

	EXECUTE [dbo].[rhcUPI_Curriculum_FormacionAgregarModificar] -- por cada formacion se registra aqui
		 @idCurriculum
		,@usuarioRealizo
		,@idCurriculumFormacion OUTPUT
		,@noError OUTPUT
		,@mensaje OUTPUT
	IF ISNULL(@noError,0) != 0
	BEGIN
		RETURN
	END

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


	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_PeriodicidadAgregarModificar]
		 @idCurriculumFormacion
		,@fechaInicio
		,@fechaTermino
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0
	BEGIN
		RETURN
	END


    /* Bitacora */
	DECLARE
		 @idBitacora bigint
		,@accion varchar(50)

	SET @accion = 'Persona.DatosExperienciaLaboral.Agregar'

	EXECUTE rhcUPI_Datos_BitacoraAgregar
		 @usuarioRealizo
		,@dispositivo
		,@direccionIP
		,@accion
		,@app
		,@idBitacora OUTPUT
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) <> 0
	BEGIN
		RETURN
	END

END
GO

