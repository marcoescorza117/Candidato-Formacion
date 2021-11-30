CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Experiencia_LaboralAgregarModificarValidar]
     @idPais INT
    ,@idInstitucion INT
    ,@institucion VARCHAR (250)

	,@noError INT OUTPUT
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN

    --idPais
    IF NOT EXISTS(SELECT *
    FROM dbo.vtaI_rhcPais
    WHERE idPais = @idPais)

    BEGIN
        SET @noError = 1
        SET @mensaje = N'La referencia del país no existe, favor de verificar'
        RETURN
    END

    --idInstitucion
    IF NOT EXISTS(SELECT *
    FROM dbo.vtaT_rhcInstitucion
    WHERE idInstitucion = @idInstitucion)

    BEGIN
        SET @noError = 1
        SET @mensaje = N'La referencia de la institución no existe, favor de verificar'
        RETURN
    END

    IF @institucion = ''
    BEGIN
        SET @noError = 1
        SET @mensaje = 'El campo no puede quedar vacio, favor de verificar'
        RETURN
    END

END
GO