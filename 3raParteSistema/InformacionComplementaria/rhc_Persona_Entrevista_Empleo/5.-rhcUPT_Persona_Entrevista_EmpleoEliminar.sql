CREATE PROCEDURE [dbo].[rhcUPT_Persona_Entrevista_EmpleoEliminar]
	 @idEntrevista BIGINT OUTPUT
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_Entrevista_EmpleoEliminarDatos]
		 @idEntrevista 
		,@noError OUTPUT
		,@mensaje OUTPUT
END