CREATE PROCEDURE [dbo].[rhcUPT_Persona_DocumentoModificarDatos]
	 @idPersona INT 
	,@idDocumento BIGINT 

	,@idPersonaDocumento BIGINT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Persona_Documento SET 
		 idPersona = @idPersona
		,idDocumento = @idDocumento
 

		WHERE idPersonaDocumento = @idPersonaDocumento 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END