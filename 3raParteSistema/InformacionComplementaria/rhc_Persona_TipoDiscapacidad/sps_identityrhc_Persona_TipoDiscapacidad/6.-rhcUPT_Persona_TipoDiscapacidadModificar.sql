CREATE PROCEDURE [dbo].[rhcUPT_Persona_TipoDiscapacidadModificar]
	 @idPersona INT 
	,@idTipoDiscapacidad SMALLINT 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaTipoDiscapacidad INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_TipoDiscapacidadModificarDatos]
		 @idPersona
		,@idTipoDiscapacidad
		,@idPersonaTipoDiscapacidad  
		,@noError OUTPUT
		,@mensaje OUTPUT
END