CREATE PROCEDURE [dbo].[rhcUPI_Persona_DocumentoAgregarModificar]
	 @idPersona INT 
	,@idDocumento BIGINT 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaDocumento BIGINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Persona_DocumentoAgregarModificar]
		 @idPersona
		,@idDocumento
		,@usuarioRealizo
		,@idPersonaDocumento OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT
END