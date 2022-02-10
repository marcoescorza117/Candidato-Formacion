CREATE PROCEDURE [dbo].[rhcUPT_Persona_DocumentoModificar]
	 @idPersona INT 
	,@idDocumento BIGINT 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaDocumento BIGINT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_DocumentoModificarDatos]
		 @idPersona
		,@idDocumento
		,@idPersonaDocumento  
		,@noError OUTPUT
		,@mensaje OUTPUT
END