CREATE PROCEDURE [dbo].[rhcUPI_Persona_DocumentoAgregarModificarValidar]
	 @idPersona INT 
	,@idDocumento BIGINT 

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN

	IF NOT EXISTS(SELECT *
    FROM dbo.vtaI_rhcDocumento
    WHERE idDocumento = @idDocumento)

    BEGIN
        SET @noError = 1
        SET @mensaje = N'La referencia del documento no existe, favor de verificar'
        RETURN
    END
	
END