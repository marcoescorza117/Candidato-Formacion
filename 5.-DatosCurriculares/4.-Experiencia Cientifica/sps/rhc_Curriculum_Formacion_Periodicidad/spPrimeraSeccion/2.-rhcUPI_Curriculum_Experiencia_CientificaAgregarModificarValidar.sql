CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Experiencia_CientificaAgregarModificarValidar]

     @idPerfilCientificoDocente SMALLINT
	,@idTipoPerfilCientificoDocente SMALLINT
	,@noError INT OUTPUT
	,@mensaje VARCHAR(255) OUTPUT

AS
BEGIN

    --idPerfilCientificoDocente
    IF NOT EXISTS(SELECT *
    FROM dbo.vtaT_rhcPerfilCientificoDocente
    WHERE idPerfilCientificoDocente = @idPerfilCientificoDocente)

    BEGIN
        SET @noError = 1
        SET @mensaje = N'La referencia del perfil no existe, favor de verificar'
        RETURN
    END

    --idTipoPerfilCientificoDocente
    IF NOT EXISTS(SELECT *
    FROM dbo.vtaT_rhcTipoPerfilCientificoDocente
    WHERE idTipoPerfilCientificoDocente = @idTipoPerfilCientificoDocente)

    BEGIN
        SET @noError = 1
        SET @mensaje = N'La referencia del tipo de perfil no existe, favor de verificar'
        RETURN
    END

END
GO