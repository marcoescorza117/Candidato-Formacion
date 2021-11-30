CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_AreaConocimientoAgregarModificarValidar]
     @idAreaConocimiento INT
    ,@noError INT OUTPUT
	,@mensaje VARCHAR(255) OUTPUT
AS

BEGIN
    IF NOT EXISTS(SELECT * FROM
                dbo.vtaT_rhcAreaConocimiento
    WHERE idAreaConocimiento = @idAreaConocimiento)
    BEGIN
        SET @noError = 1
        SET @mensaje = N'La referencia del área de conocimiento no existe, favor de verificar'
        RETURN
    END

END