CREATE PROCEDURE dbo.[rhcUPI_DatosCurriculum_Lengua_ExtranjeraAgregarModificar]

	 @idPersona INT
	,@idIdioma SMALLINT
	,@idIdiomaTipoCertificacion SMALLINT
	,@nivel VARCHAR (25)

	,@idInstitucion INT
	,@institucion VARCHAR (250)
	,@fecha DATETIME
	,@duracion VARBINARY (25)

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

	EXECUTE [dbo].[rhcUPI_Curriculum_Lengua_ExtranjeraAgregarModificarValidar]
	     @idIdioma
        ,@idIdiomaTipoCertificacion
        ,@nivel
        ,@idInstitucion
        ,@institucion

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

    --rhcCurriculumFormacionIdioma
	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_IdiomaAgregarModificar] -- por cada formacion se registra aqui
		 @idIdioma
        ,@idIdiomaTipoCertificacion
        ,@nivel
        ,@usuarioRealizo
        ,@idCurriculumFormacion OUTPUT
        ,@noError OUTPUT
        ,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0
	BEGIN
		RETURN
	END

	--rhcCurriculumFormacionInstitucion
	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_InstitucionAgregarModificar]
		 @idCurriculumFormacion
		,@idInstitucion
		,@institucion
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0
	BEGIN
		RETURN
	END

	--Formacion duracion
	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_DuracionAgregarModificar]
		 @idCurriculumFormacion
		,@fecha
		,@duracion
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

