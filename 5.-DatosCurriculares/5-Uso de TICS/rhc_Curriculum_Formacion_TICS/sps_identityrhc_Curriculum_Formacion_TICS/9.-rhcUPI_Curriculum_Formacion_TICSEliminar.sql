CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_TICSEliminar]
	 @idCurriculumFormacion INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TICSEliminar]
		 @idCurriculumFormacion 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END