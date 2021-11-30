CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_FormacionModificar]
	 @idCurriculumFormacion INT 
	,@idCurriculum INT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_FormacionModificarDatos]
		 @idCurriculumFormacion
		,@idCurriculum
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

