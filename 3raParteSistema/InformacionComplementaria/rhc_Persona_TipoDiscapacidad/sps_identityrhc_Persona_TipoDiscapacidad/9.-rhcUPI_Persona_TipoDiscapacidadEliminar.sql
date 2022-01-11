CREATE PROCEDURE [dbo].[rhcUPI_Persona_TipoDiscapacidadEliminar]
	 @idPersonaTipoDiscapacidad INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_TipoDiscapacidadEliminar]
		 @idPersonaTipoDiscapacidad 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END