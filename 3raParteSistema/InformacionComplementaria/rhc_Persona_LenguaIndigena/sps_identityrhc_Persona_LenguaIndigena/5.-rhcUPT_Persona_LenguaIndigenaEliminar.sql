CREATE PROCEDURE [dbo].[rhcUPT_Persona_LenguaIndigenaEliminar]
	 @idPersonaLenguaIndigena INT OUTPUT
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_LenguaIndigenaEliminarDatos]
		 @idPersonaLenguaIndigena 
		,@noError OUTPUT
		,@mensaje OUTPUT
END