CREATE PROCEDURE dbo.[rhcUPI_DatosCurriculum_Formacion_AcademicaAgregarModificar]

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

	DECLARE @idCurriculum INT --declaramos el idCurriculum

	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_AcademicaAgregarModificarValidar] -- Validando campos
	     @idNivelEducativo
        ,@idPais
        ,@idInstitucion
        ,@institucion
        ,@idProgramaEducativo
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


    -- DECLARE @idCurriculum INT --declaramos el idCurriculum
    -- --- VALIDANDO QUE EXISTAN DENTRO DE rhc_Curriculum ----
    -- SELECT @idCurriculum = idCurriculum -- se verifica si existe el idCurriculum dentro de rhc_Curriculum
    -- FROM dbo.rhc_Curriculum
    -- WHERE idPersona = @idPersona

    -- IF ISNULL(@idCurriculum,0) = 0 -- si no existe, se procede a generar uno... dentro de rhcCurriculum
    -- BEGIN

    --     EXECUTE [dbo].[rhcUPI_CurriculumAgregarModificar] -- generando el @idCurriculum para que exista dentro de rhc_Curriculum
    --          @idPersona
    --         ,@usuarioRealizo
    --         ,@idCurriculum OUTPUT  -- @idCurriculum a generar
    --         ,@noError OUTPUT
    --         ,@mensaje OUTPUT

    --     IF ISNULL(@noError,0) != 0
    --     BEGIN
    --         RETURN
    --     END
    -- END

    EXECUTE [dbo].[rhcUPI_Curriculum_FormacionAgregarModificar] -- por cada formacion se registra aqui
		 @idCurriculum
		,@usuarioRealizo
		,@idCurriculumFormacion OUTPUT -- generando esto...
		,@noError OUTPUT
		,@mensaje OUTPUT
	IF ISNULL(@noError,0) != 0
	BEGIN
		RETURN
	END


    --Formacion Nievel Educativo
    EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_NivelEductaivoAgregarModificar]
		 @idCurriculumFormacion
		,@idNivelEducativo
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0
	BEGIN
		RETURN
	END

    --Formacion Pais
    EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_PaisAgregarModificar]
		 @idCurriculumFormacion
		,@idPais
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0
	BEGIN
		RETURN
	END

    --Formacion Institucion
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


    --Formacion estudio
    EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_EstudioAgregarModificar]
		 @idCurriculumFormacion
		,@idProgramaEducativo
		,@estudio
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

	SET @accion = 'Persona.DatosFormacionAcademica.Agregar'

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
go

