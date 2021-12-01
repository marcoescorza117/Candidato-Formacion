CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Lengua_ExtranjeraAgregarModificarValidar]

     @idIdioma SMALLINT
	,@idIdiomaTipoCertificacion SMALLINT
	,@nivel VARCHAR (25)

	,@idInstitucion INT
	,@institucion VARCHAR (250)

	,@noError INT OUTPUT
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN

    --@idIdioma
    IF NOT EXISTS(SELECT *
    FROM dbo.vtaT_rhcIdioma
    WHERE idIdioma = @idIdioma)

    BEGIN
        SET @noError = 1
        SET @mensaje = N'La referencia del idioma no existe, favor de verificar'
        RETURN
    END


    --@idIdiomaTipoCertificacion
    IF NOT EXISTS(SELECT *
    FROM dbo.vtaT_rhcIdioma_TipoCertificacion
    WHERE idIdiomaTipoCertificacion = @idIdiomaTipoCertificacion)

    BEGIN
        SET @noError = 1
        SET @mensaje = N'La referencia del tipo de certificacion no existe, favor de verificar'
        RETURN
    END

    --idInstitucion
    IF NOT EXISTS(SELECT *
    FROM dbo.vtaT_rhcInstitucion
    WHERE idInstitucion = @idInstitucion)

    BEGIN
        SET @noError = 1
        SET @mensaje = 'La referencia de la institución no existe, favor de verificar'
        RETURN
    END


END
GO