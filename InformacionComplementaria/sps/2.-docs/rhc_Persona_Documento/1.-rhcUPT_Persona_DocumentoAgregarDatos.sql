CREATE PROCEDURE [dbo].[rhcUPT_Persona_DocumentoAgregarDatos]
	 @idPersona INT 
	,@idDocumento BIGINT 
	,@idPersonaDocumento BIGINT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Persona_Documento 
	(
		  idPersona
		 ,idDocumento
	)
	VALUES
	(
		  @idPersona
		 ,@idDocumento
	)
	SET @idPersonaDocumento = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END