CREATE PROCEDURE [dbo].[rhcUPI_DatosCurriculumAgregarModificar]
	 @idPersona INT 

	,@usuarioRealizo VARCHAR (60)
	,@dispositivo VARCHAR (150)
	,@direccionIP VARCHAR (40)
	,@app VARCHAR (50)

	,@idCurriculum INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN
	EXECUTE [dbo].[rhcUPI_CurriculumAgregarModificar]
		 @idPersona
		,@usuarioRealizo
		,@idCurriculum OUTPUT  
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
		,@accion
		,@app
		,@idBitacora OUTPUT
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0 
	BEGIN
		RETURN
	END
END