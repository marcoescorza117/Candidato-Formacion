CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_InstitucionEliminar]
	 @idCurriculumFormacion INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionEliminar]
		 @idCurriculumFormacion 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END