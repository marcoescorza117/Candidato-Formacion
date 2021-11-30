CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_FormacionAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idCurriculum INT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_FormacionAgregarModificar]
		 @idCurriculumFormacion
		,@idCurriculum
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END