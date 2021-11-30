CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralAgregarModificar]
	 @puesto VARCHAR (150) 
	,@actividades VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idCurriculumFormacion, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralAgregar]
		 @puesto
		,@actividades
		,@usuarioRealizo
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralModificar]
		 @puesto
		,@actividades
		,@usuarioRealizo
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END