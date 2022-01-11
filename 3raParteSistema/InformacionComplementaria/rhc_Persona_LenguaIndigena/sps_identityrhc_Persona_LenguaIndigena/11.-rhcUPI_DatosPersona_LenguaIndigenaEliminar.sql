CREATE PROCEDURE [dbo].[rhcUPI_DatosPersona_LenguaIndigenaEliminar]
	 @idPersonaLenguaIndigena INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPI_Persona_LenguaIndigenaEliminar]

		 @idPersonaLenguaIndigena 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0 
	BEGIN
		RETURN
	END
END