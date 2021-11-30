CREATE PROCEDURE dbo.[rhcUPI_DatosCurriculum_Experiencia_LaboralAgregarModificar]

	 @idPersona INT
    ,@idPais INT

	,@idInstitucion INT
	,@institucion VARCHAR (250)
	,@fechaInicio DATETIME
	,@fechaTermino DATETIME

	,@puesto VARCHAR (150)
	,@actividades VARCHAR

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

	EXECUTE [dbo].[rhcUPI_Curriculum_Experiencia_LaboralAgregarModificarValidar]
	     @idPais
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

	--Formacion periocidad
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

	--Formacion Experiencia laboral
	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_ExperenciaLaboralAgregarModificar]
		 @idCurriculumFormacion
		,@puesto
		,@actividades
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
go

