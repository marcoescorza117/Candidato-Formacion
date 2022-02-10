CREATE PROCEDURE [dbo].[rhcUPT_Persona_DocumentoAgregar]
	 @idPersona INT 
	,@idDocumento BIGINT 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaDocumento BIGINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_DocumentoAgregarDatos]
		 @idPersona
		,@idDocumento
		,@idPersonaDocumento OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END