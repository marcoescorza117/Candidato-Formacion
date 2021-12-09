CREATE PROCEDURE dbo.[rhcUPI_DatosCurriculum_Uso_TICSAgregarModificar]

	 @idPersona INT
    ,@idTipoTICS SMALLINT
	,@herramientas VARCHAR(MAX)

	,@usuarioRealizo varchar(60)
	,@dispositivo varchar(150)
	,@direccionIP varchar(40)
	,@app varchar(50)

    --,@idCurriculumFormacion INT OUTPUT
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


	DECLARE @idCurriculumFormacionExistente int
	DECLARE @idCurriculumFormacion int
	SELECT
	       @idCurriculumFormacionExistente = rcf.idCurriculumFormacion
      FROM dbo.vtaI_rhcCurriculum as rc
      INNER JOIN dbo.vtaI_rhcCurriculum_Formacion as rcf ON rc.idCurriculum = rcf.idCurriculum --Uno a muchos...
      INNER JOIN vtaT_rhcCurriculum_Formacion_TICS as rct ON rcf.idCurriculumFormacion = rct.idCurriculumFormacion
        WHERE rc.idPersona = @idPersona
    AND rct.idTipoTICS = @idTipoTICS
	
	--SI existe 
	IF @idCurriculumFormacionExistente <> 0 
	    BEGIN
	        EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_TICSAgregarModificar] -- agrega habilidad en tics
                 @idCurriculumFormacionExistente 
                ,@idTipoTICS
                ,@herramientas
                ,@usuarioRealizo
                ,@noError OUTPUT
                ,@mensaje OUTPUT
    
            IF ISNULL(@noError,0) != 0
            BEGIN
                RETURN
            END
        END
	ELSE
	    BEGIN 
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

                EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_TICSAgregarModificar] -- agrega habilidad en tics
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

