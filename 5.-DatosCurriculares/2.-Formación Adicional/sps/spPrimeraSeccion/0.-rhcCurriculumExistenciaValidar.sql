CREATE  PROCEDURE [dbo].[rhcCurriculumExistenciaValidar]
     @idPersona bigint
    ,@usuarioRealizo VARCHAR(60)
    ,@idCurriculum INT OUTPUT
	,@noError INT OUTPUT
	,@mensaje VARCHAR(255) OUTPUT

AS

BEGIN

    SELECT @idCurriculum = idCurriculum
    FROM dbo.rhc_Curriculum
    WHERE idPersona = @idPersona

    IF ISNULL(@idCurriculum,0) = 0
        BEGIN

            EXECUTE [dbo].[rhcUPI_CurriculumAgregarModificar] -- generando el @idCurriculum para que exista dentro de rhc_Curriculum
                 @idPersona
                ,@usuarioRealizo
                ,@idCurriculum OUTPUT  -- @idCurriculum a generar
                ,@noError OUTPUT
                ,@mensaje OUTPUT

            IF ISNULL(@noError,0) != 0
            BEGIN
                RETURN
            END
        END
    ELSE
        BEGIN
            RETURN
        END
    
END
go

