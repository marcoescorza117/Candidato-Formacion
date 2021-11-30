CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_ExperenciaLaboralAgregarModificar]
	 @idCurriculumFormacion INT 
	,@puesto VARCHAR (150) 
	,@actividades VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralAgregarModificar]
		 @idCurriculumFormacion
		,@puesto
		,@actividades
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END