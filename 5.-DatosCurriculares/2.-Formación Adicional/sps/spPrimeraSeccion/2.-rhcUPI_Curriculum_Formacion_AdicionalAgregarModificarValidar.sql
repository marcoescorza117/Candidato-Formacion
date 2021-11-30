CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_AdicionalAgregarModificarValidar]

     @idTipoFormacionAdicional SMALLINT
    ,@idProgramaEducativo INT
    ,@estudio VARCHAR (150)
    ,@idInstitucion INT
    ,@institucion VARCHAR (250)

	,@noError INT OUTPUT
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN

    --idFormacionAdicional
    IF NOT EXISTS(SELECT *
    FROM dbo.vtaT_rhcTipoFormacionAdicional
    WHERE idTipoFormacionAdicional = @idTipoFormacionAdicional)

    BEGIN
        SET @noError = 1
        SET @mensaje = N'La referencia del tipo de formacion no existe, favor de verificar'
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

    IF @estudio = ''
    BEGIN
        SET @noError = 1
        SET @mensaje = 'El campo no puede quedar vacio, favor de verificar'
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
go

