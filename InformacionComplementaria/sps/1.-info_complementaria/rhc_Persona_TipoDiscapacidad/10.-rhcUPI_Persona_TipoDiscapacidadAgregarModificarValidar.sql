CREATE PROCEDURE [dbo].[rhcUPI_Persona_TipoDiscapacidadAgregarModificarValidar]
	 @idPersona INT 
	,@idTipoDiscapacidad SMALLINT 

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN

	IF NOT EXISTS(SELECT *
    FROM dbo.vtaI_rhcTipoDiscapacidad
    WHERE idTipoDiscapacidad = @idTipoDiscapacidad)

    BEGIN
        SET @noError = 1
        SET @mensaje = N'La referencia de esta discapacidad no existe, favor de verificar'
        RETURN
    END

    IF EXISTS(SELECT *
    FROM dbo.vtaT_rhcPersona_TipoDiscapacidad
    WHERE idTipoDiscapacidad = @idTipoDiscapacidad
    AND idPersona = @idPersona)

    BEGIN
        SET @noError = 1
        SET @mensaje = N'El tipo de discapacidad ya esta registrada, favor de verificar.'
        RETURN
    END
END
go

