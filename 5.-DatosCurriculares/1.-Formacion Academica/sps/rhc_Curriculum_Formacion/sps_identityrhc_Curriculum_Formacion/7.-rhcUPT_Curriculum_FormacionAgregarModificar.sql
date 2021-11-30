CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_FormacionAgregarModificar]
	 @idCurriculum INT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idCurriculumFormacion, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_FormacionAgregar]
		 @idCurriculum
		,@usuarioRealizo
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_FormacionModificar]
		 @idCurriculum
		,@usuarioRealizo
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END