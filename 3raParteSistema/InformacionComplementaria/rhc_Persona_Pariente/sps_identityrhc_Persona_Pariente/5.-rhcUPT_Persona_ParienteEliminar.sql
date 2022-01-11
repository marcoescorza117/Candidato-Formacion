CREATE PROCEDURE [dbo].[rhcUPT_Persona_ParienteEliminar]
	 @idPersonaPariente INT OUTPUT
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_ParienteEliminarDatos]
		 @idPersonaPariente 
		,@noError OUTPUT
		,@mensaje OUTPUT
END