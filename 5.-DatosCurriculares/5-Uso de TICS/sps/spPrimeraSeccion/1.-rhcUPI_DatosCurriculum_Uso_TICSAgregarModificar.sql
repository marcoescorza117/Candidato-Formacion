CREATE PROCEDURE dbo.[rhcUPI_DatosCurriculum_Uso_TICSAgregarModificar]

	 @idPersona INT
    ,@idTipoTICS SMALLINT
	,@herramientas VARCHAR

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

	--formacion TICS agregar
	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_TICSAgregarModificar]
		 @idCurriculumFormacion
		,@idTipoTICS
		,@herramientas
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

