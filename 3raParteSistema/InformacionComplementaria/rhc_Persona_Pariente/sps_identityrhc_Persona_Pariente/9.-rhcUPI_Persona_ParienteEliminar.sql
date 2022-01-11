CREATE PROCEDURE [dbo].[rhcUPI_Persona_ParienteEliminar]
	 @idPersonaPariente INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_ParienteEliminar]
		 @idPersonaPariente 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END