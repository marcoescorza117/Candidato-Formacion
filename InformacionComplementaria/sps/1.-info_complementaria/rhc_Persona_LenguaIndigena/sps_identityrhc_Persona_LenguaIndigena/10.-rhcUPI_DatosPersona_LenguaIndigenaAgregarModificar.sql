CREATE PROCEDURE [dbo].[rhcUPI_DatosPersona_LenguaIndigenaAgregarModificar]
	 @idPersona INT 
	,@idLenguaIndigena SMALLINT 

	,@usuarioRealizo VARCHAR (60)
	,@dispositivo VARCHAR (150)
	,@direccionIP VARCHAR (40)
	,@app VARCHAR (50)

	,@idPersonaLenguaIndigena INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN

    EXECUTE [dbo].[rhcUPI_Persona_LenguaIndigenaAgregarModificarValidar]
         @idPersona
        ,@idLenguaIndigena
        ,@noError OUTPUT
		,@mensaje OUTPUT

    IF ISNULL(@noError,0) != 0
	BEGIN
		RETURN
	END


	EXECUTE [dbo].[rhcUPI_Persona_LenguaIndigenaAgregarModificar]
		 @idPersona
		,@idLenguaIndigena
		,@usuarioRealizo
		,@idPersonaLenguaIndigena OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0 
	BEGIN
		RETURN
	END

	DECLARE  
		 @idBitacora BIGINT
		,@accion VARCHAR(50)
	SET @accion = 'DatosPersonaLenguaIndigena.AgregarModificar'

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

