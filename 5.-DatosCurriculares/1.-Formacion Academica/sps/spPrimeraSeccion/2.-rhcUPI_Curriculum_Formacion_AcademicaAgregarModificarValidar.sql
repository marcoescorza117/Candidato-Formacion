CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_AcademicaAgregarModificarValidar]

     @idNivelEducativo TINYINT
    ,@idPais INT
    ,@idInstitucion INT
	,@institucion VARCHAR (250)
	,@idProgramaEducativo INT

	,@noError INT OUTPUT
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN

    --idNivelEducativo
    IF NOT EXISTS(SELECT * FROM
                dbo.vtaT_rhcNivelEducativo
    WHERE idNivelEducativo = @idNivelEducativo)
    BEGIN
        SET @noError = 1
        SET @mensaje = 'La referencia del nivel educativo no existe, favor de verificar'
        RETURN
    END


    --idPais
    IF NOT EXISTS(SELECT *
    FROM dbo.vtaI_rhcPais
    WHERE idPais = @idPais)

    BEGIN
        SET @noError = 1
        SET @mensaje = 'La referencia del país no existe, favor de verificar'
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

    IF @institucion = ''
    BEGIN
        SET @noError = 1
        SET @mensaje = 'El campo no puede quedar vacio, favor de verificar'
        RETURN
    END


	--idProgramaEducativo
    IF NOT EXISTS(SELECT *
    FROM dbo.vtaT_rhcProgramaEducativo
    WHERE idProgramaEducativo = @idProgramaEducativo)

    BEGIN
        SET @noError = 1
        SET @mensaje = 'La referencia del programa educativo no existe, favor de verificar'
        RETURN
    END

END
GO
