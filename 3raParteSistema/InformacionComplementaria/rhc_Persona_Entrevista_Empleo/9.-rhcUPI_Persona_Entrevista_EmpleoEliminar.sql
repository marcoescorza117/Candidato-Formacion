CREATE PROCEDURE [dbo].[rhcUPI_Persona_Entrevista_EmpleoEliminar]
	 @idEntrevista BIGINT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_Entrevista_EmpleoEliminar]
		 @idEntrevista 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END