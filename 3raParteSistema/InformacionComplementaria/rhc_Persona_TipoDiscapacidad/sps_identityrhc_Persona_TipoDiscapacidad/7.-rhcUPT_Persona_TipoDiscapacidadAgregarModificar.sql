CREATE PROCEDURE [dbo].[rhcUPT_Persona_TipoDiscapacidadAgregarModificar]
	 @idPersona INT 
	,@idTipoDiscapacidad SMALLINT 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaTipoDiscapacidad INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idPersonaTipoDiscapacidad, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Persona_TipoDiscapacidadAgregar]
		 @idPersona
		,@idTipoDiscapacidad
		,@usuarioRealizo
		,@idPersonaTipoDiscapacidad OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Persona_TipoDiscapacidadModificar]
		 @idPersona
		,@idTipoDiscapacidad
		,@usuarioRealizo
		,@idPersonaTipoDiscapacidad  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END