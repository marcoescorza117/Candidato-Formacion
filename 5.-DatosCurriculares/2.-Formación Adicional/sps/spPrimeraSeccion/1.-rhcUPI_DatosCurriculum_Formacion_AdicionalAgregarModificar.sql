CREATE PROCEDURE dbo.[rhcUPI_DatosCurriculum_Formacion_AdicionalAgregarModificar]

	 @idPersona INT
    ,@idTipoFormacionAdicional SMALLINT
    ,@idProgramaEducativo INT
	,@estudio VARCHAR (150)
	,@fecha DATETIME
	,@duracion VARBINARY (25)
	,@idInstitucion INT
	,@institucion VARCHAR (250)

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

	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_AdicionalAgregarModificarValidar] -- Validando campos
         @idTipoFormacionAdicional 
        ,@idProgramaEducativo
        ,@estudio
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

	--Formacion Tipo formacion adicional
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

	--Formacion Estudio
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

	--Formacion institucion
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

	SET @accion = 'Persona.DatosFormacionAdicional.Agregar'

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

