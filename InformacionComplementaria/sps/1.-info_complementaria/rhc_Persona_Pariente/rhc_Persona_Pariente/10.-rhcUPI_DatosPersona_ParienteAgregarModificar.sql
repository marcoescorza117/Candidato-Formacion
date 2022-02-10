CREATE PROCEDURE [dbo].[rhcUPI_DatosPersona_ParienteAgregarModificar]
	 @idPersona INT 
	,@idTipoParentesco TINYINT 
	,@paterno VARCHAR (30) 
	,@materno VARCHAR (30) 
	,@nombres VARCHAR (40) 

	,@usuarioRealizo VARCHAR (60)
	,@dispositivo VARCHAR (150)
	,@direccionIP VARCHAR (40)
	,@app VARCHAR (50)

	,@idPersonaPariente INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN
	EXECUTE [dbo].[rhcUPI_Persona_ParienteAgregarModificar]
		 @idPersona
		,@idTipoParentesco
		,@paterno
		,@materno
		,@nombres
		,@usuarioRealizo
		,@idPersonaPariente OUTPUT  
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