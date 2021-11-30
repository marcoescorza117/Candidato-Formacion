CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_FormacionModificar]
	 @idCurriculum INT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_FormacionModificarDatos]
		 @idCurriculum
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
END