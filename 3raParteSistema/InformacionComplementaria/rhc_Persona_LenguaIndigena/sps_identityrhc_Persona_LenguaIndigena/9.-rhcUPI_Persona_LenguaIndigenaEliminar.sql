CREATE PROCEDURE [dbo].[rhcUPI_Persona_LenguaIndigenaEliminar]
	 @idPersonaLenguaIndigena INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_LenguaIndigenaEliminar]
		 @idPersonaLenguaIndigena 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END