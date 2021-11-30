CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralEliminar]
	 @idCurriculumFormacion INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralEliminarDatos]
		 @idCurriculumFormacion 
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

