CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_FormacionAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idCurriculum INT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum_Formacion 
			 WHERE idCurriculumFormacion = @idCurriculumFormacion 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_FormacionAgregar]
		 @idCurriculumFormacion
		,@idCurriculum
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_FormacionModificar]
		 @idCurriculumFormacion
		,@idCurriculum
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

