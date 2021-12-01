CREATE PROCEDURE [dbo].[rhcUPT_CurriculumAgregarModificar]
	 @idCurriculum INT 
	,@idPersona INT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum 
			 WHERE idCurriculum = @idCurriculum 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_CurriculumAgregar]
		 @idCurriculum
		,@idPersona
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_CurriculumModificar]
		 @idCurriculum
		,@idPersona
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

