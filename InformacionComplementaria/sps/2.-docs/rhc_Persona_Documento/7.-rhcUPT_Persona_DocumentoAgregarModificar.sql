CREATE PROCEDURE [dbo].[rhcUPT_Persona_DocumentoAgregarModificar]
	 @idPersona INT 
	,@idDocumento BIGINT 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaDocumento BIGINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idPersonaDocumento, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Persona_DocumentoAgregar]
		 @idPersona
		,@idDocumento
		,@usuarioRealizo
		,@idPersonaDocumento OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Persona_DocumentoModificar]
		 @idPersona
		,@idDocumento
		,@usuarioRealizo
		,@idPersonaDocumento  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END