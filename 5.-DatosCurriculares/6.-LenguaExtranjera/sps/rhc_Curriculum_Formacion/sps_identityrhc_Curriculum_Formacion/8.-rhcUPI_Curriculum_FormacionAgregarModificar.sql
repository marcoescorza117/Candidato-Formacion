CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_FormacionAgregarModificar]
	 @idCurriculum INT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_FormacionAgregarModificar]
		 @idCurriculum
		,@usuarioRealizo
		,@idCurriculumFormacion OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT
END