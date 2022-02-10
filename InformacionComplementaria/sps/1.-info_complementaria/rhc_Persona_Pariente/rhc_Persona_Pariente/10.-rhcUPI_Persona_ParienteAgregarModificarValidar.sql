CREATE PROCEDURE [dbo].[rhcUPI_Persona_ParienteAgregarModificarValidar]
	 @idTipoParentesco TINYINT
    ,@paterno VARCHAR (30)
	,@materno VARCHAR (30)
	,@nombres VARCHAR (40)
	,@adscripcion VARCHAR (120)
	
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN

    DECLARE @nombrePersonaParentesco VARCHAR(200)

	IF NOT EXISTS(SELECT *
    FROM dbo.vtaI_rhcTipoParentesco
    WHERE idTipoParentesco = @idTipoParentesco)

    BEGIN
        SET @noError = 1
        SET @mensaje = N'La referencia del parentesco no existe, favor de verificar'
        RETURN
    END

    IF @paterno = ''
    BEGIN
        SET @noError = 1
        SET @mensaje = 'El campo apellido paterno no puede quedar vacio, favor de verificar'
        RETURN
    END

	IF @materno = ''
    BEGIN
        SET @noError = 1
        SET @mensaje = 'El campo apellido materno no puede quedar vacio, favor de verificar'
        RETURN
    END

	IF @nombres = ''
    BEGIN
        SET @noError = 1
        SET @mensaje = 'El campo nombres no puede quedar vacio, favor de verificar'
        RETURN
    END

	IF @adscripcion = ''
    BEGIN
        SET @noError = 1
        SET @mensaje = N'El campo adscripción no puede quedar vacio, favor de verificar'
        RETURN
    END

    SET @nombrePersonaParentesco = @paterno+' '+@materno+' '+@nombres
    IF EXISTS(SELECT
             idPersonaPariente
            ,idPersona
            ,idTipoParentesco
          FROM dbo.vtaI_rhcPersona_Pariente
		  WHERE CONCAT(paterno,' ', materno,' ',nombres)  = @nombrePersonaParentesco
          AND idTipoParentesco = @idTipoParentesco)

    BEGIN
        SET @noError = 1
        SET @mensaje = N'Esta persona ya existe, verifique el tipo de parentesco'
        RETURN
    END


END


