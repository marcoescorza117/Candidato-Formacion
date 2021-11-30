CREATE  PROCEDURE rhcUPI_Datos_InvitacionAgregarModificar
	 @paterno VARCHAR (30)
	,@materno VARCHAR (30)
	,@nombres VARCHAR (40)
	,@curp VARCHAR (18)
	,@correoElectronico VARCHAR(200)

	,@tipoInvitacion varchar(2)
	,@timeStampAnio INT 
	,@timeStampMes TINYINT
	,@timeStampDia TINYINT
	,@timeStampHora TINYINT
	,@timeStampMinuto TINYINT
	,@aleatorio VARCHAR (4)

	,@usuarioRealizo VARCHAR (60)
	,@dispositivo varchar(150)
	,@direccionIP varchar(40)
	,@app varchar(50)

	,@idInvitacion bigint OUTPUT
	,@noError int OUTPUT
	,@mensaje varchar(255) OUTPUT
AS
BEGIN

	DECLARE 
		 @idPersona INT 
		,@idTipoInvitacion SMALLINT 
		,@folio VARCHAR (40)
		,@estado VARCHAR (1)
		,@genero VARCHAR (1) = substring(@curp, 11, 1)

		,@timeStampAnioStr varchar(4)
		,@timeStampMesStr varchar(2)
		,@timeStampDiaStr varchar(2)
		,@timeStampHoraStr varchar(2)
		,@timeStampMinutoStr varchar(2)


	SELECT 
		@idTipoInvitacion = idTipoInvitacion 
	FROM vtaT_rhcTipoInvitacion
	WHERE clave = @tipoInvitacion

	IF @idTipoInvitacion IS NULL
	BEGIN
		SET @noError = 1
		SET @mensaje = 'La clave del tipo de invitación no existe, favor de verificar'
		RETURN 
	END 


	SET @estado = 'G'
	SET @timeStampAnioStr = convert(varchar(4), @timeStampAnio)
	SET @timeStampMesStr = right('0'+convert(varchar(2), @timeStampMes), 2)
	SET @timeStampDiaStr = right('0'+convert(varchar(2), @timeStampDia), 2)
	SET @timeStampHoraStr = right('0'+convert(varchar(2), @timeStampHora), 2)
	SET @timeStampMinutoStr = right('0'+convert(varchar(2), @timeStampMinuto), 2)
	SET @folio = @tipoInvitacion + '-' + @usuarioRealizo + '-' + @timeStampAnioStr + @timeStampMesStr + @timeStampDiaStr + @timeStampHoraStr + @timeStampMinutoStr + '-' + @aleatorio 


	EXECUTE rhcUPI_Invitacion_FolioAgregarModificarValidar
		 @folio 
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError, 0) != 0
	BEGIN
		RETURN 
	END 


	EXECUTE rhcUPI_Invitacion_PersonaAgregarModificarValidar
		 @genero 
		,@curp 
		,@correoElectronico 
		,@idTipoInvitacion
		,@idPersona OUTPUT
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError, 0) != 0
	BEGIN
		RETURN 
	END 


	IF ISNULL(@idPersona, 0) = 0 
	BEGIN

		EXECUTE rhcUPI_PersonaAgregarModificar
			 @paterno 
			,@materno 
			,@nombres 
			,@genero 
			,@usuarioRealizo 
			,@idPersona OUTPUT 
			,@noError OUTPUT
			,@mensaje OUTPUT

		IF ISNULL(@noError, 0) != 0
		BEGIN
			RETURN 
		END 


		EXECUTE rhcUPI_Persona_IdentificacionAgregarModificar
			 @idPersona 
			,@curp 
			,'' -- @rfc 
			,@usuarioRealizo 
			,@noError OUTPUT
			,@mensaje OUTPUT

		IF ISNULL(@noError, 0) != 0
		BEGIN
			RETURN 
		END 


		DECLARE
			 @idCorreoElectronico INT 

		EXECUTE rhcUPI_Persona_CorreoElectronicoAgregar
			 @idPersona 
			,@correoElectronico
			,'Privado' --@tipoCorreoElectronico 
			,'S' --@principal
			,@usuarioRealizo 
			,@idCorreoElectronico OUTPUT 
			,@noError OUTPUT
			,@mensaje OUTPUT

		IF ISNULL(@noError, 0) != 0
		BEGIN
			RETURN 
		END 


	END 


	EXECUTE rhcUPT_InvitacionAgregarDatos
		 @idPersona 
		,@idTipoInvitacion 
		,@timeStampAnio 
		,@timeStampMes 
		,@timeStampDia 
		,@timeStampHora 
		,@timeStampMinuto 
		,@usuarioRealizo 
		,@aleatorio 
		,@folio 
		,@estado
		,@idInvitacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError, 0) != 0
	BEGIN
		RETURN 
	END 


	/* Bitacora */
	DECLARE 
		 @idBitacora bigint 
		,@accion varchar(50)

	SET @accion = 'Candidato.invitacion.generar'

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


	EXECUTE rhcUPI_Bitacora_PersonaAgregar
		 @idBitacora 
		,@idPersona
		,@usuarioRealizo 
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) <> 0
	BEGIN
		RETURN
	END

END
go

