CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralAgregar]
	 @puesto VARCHAR (150) 
	,@actividades VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralAgregarDatos]
		 @puesto
		,@actividades
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END