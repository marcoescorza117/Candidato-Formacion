CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_FormacionAgregar]
	 @idCurriculum INT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_FormacionAgregarDatos]
		 @idCurriculum
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END