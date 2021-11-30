CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_DocumentoAgregarModificarValidar]
     @idDocumento INT
    ,@noError INT OUTPUT
	,@mensaje VARCHAR(255) OUTPUT
AS

BEGIN
    IF NOT EXISTS(SELECT * FROM
                dbo.vtaT_rhcDocumento
    WHERE idDocumento = @idDocumento)
    BEGIN
        SET @noError = 1
        SET @mensaje = N'La referencia del documento no existe, favor de verificar'
        RETURN
    END

END