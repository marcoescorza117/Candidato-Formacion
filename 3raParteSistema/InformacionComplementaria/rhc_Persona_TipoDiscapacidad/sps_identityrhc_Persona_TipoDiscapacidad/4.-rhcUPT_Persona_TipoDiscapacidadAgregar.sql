CREATE PROCEDURE [dbo].[rhcUPT_Persona_TipoDiscapacidadAgregar]
	 @idPersona INT 
	,@idTipoDiscapacidad SMALLINT 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaTipoDiscapacidad INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_TipoDiscapacidadAgregarDatos]
		 @idPersona
		,@idTipoDiscapacidad
		,@idPersonaTipoDiscapacidad OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END