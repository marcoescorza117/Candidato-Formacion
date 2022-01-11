CREATE PROCEDURE [dbo].[rhcUPI_Persona_TipoDiscapacidadAgregarModificar]
	 @idPersona INT 
	,@idTipoDiscapacidad SMALLINT 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaTipoDiscapacidad INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Persona_TipoDiscapacidadAgregarModificar]
		 @idPersona
		,@idTipoDiscapacidad
		,@usuarioRealizo
		,@idPersonaTipoDiscapacidad OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT
END