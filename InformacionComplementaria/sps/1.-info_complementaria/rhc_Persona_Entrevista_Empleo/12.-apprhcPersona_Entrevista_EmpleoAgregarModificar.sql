CREATE PROCEDURE [dbo].[rhcUPI_DatosPersona_Entrevista_EmpleoAgregarModificar]
	 @idPersona INT 
	,@formaEntero VARCHAR (MAX)
	,@personaInvito VARCHAR (MAX)
	,@motivoTrabajarInstitucion VARCHAR (MAX)
	,@familiaresLaborandoInstitucion VARCHAR (1)

	,@usuarioRealizo VARCHAR (60)
	,@dispositivo VARCHAR (150)
	,@direccionIP VARCHAR (40)
	,@app VARCHAR (50)

	,@idEntrevista BIGINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN

    EXECUTE [dbo].[rhcUPI_Persona_Entrevista_EmpleoAgregarModificarValidar]
         @formaEntero
        ,@personaInvito
        ,@motivoTrabajarInstitucion
        ,@familiaresLaborandoInstitucion
        ,@noError OUTPUT
        ,@mensaje OUTPUT

    IF ISNULL(@noError,0) != 0
	BEGIN
		RETURN
	END


	EXECUTE [dbo].[rhcUPI_Persona_Entrevista_EmpleoAgregarModificar]
		 @idPersona
		,@formaEntero
		,@personaInvito
		,@motivoTrabajarInstitucion
		,@familiaresLaborandoInstitucion
		,@usuarioRealizo
		,@idEntrevista OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0 
	BEGIN
		RETURN
	END

	DECLARE  
		 @idBitacora BIGINT
		,@accion VARCHAR(50)
	SET @accion = 'EntrevistaEmpleo.AgregarModificar '

	EXECUTE rhcUPI_Datos_BitacoraAgregar
		 @usuarioRealizo
		,@dispositivo
		,@direccionIP
		,@app
		,@accion
		,@idBitacora OUTPUT
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0 
	BEGIN
		RETURN
	END
END
go

