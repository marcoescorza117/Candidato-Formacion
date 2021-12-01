CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TICSEliminar]
	 @idCurriculumFormacion INT OUTPUT
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TICSEliminarDatos]
		 @idCurriculumFormacion 
		,@noError OUTPUT
		,@mensaje OUTPUT
END