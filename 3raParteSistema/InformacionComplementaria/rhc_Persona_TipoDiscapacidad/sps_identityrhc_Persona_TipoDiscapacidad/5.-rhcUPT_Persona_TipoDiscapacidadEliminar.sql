CREATE PROCEDURE [dbo].[rhcUPT_Persona_TipoDiscapacidadEliminar]
	 @idPersonaTipoDiscapacidad INT OUTPUT
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_TipoDiscapacidadEliminarDatos]
		 @idPersonaTipoDiscapacidad 
		,@noError OUTPUT
		,@mensaje OUTPUT
END