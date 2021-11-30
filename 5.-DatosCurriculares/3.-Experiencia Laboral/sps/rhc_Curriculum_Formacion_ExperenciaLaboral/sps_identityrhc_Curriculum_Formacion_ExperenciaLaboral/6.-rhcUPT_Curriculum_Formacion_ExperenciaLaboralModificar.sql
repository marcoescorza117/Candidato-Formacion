CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralModificar]
	 @puesto VARCHAR (150) 
	,@actividades VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralModificarDatos]
		 @puesto
		,@actividades
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
END