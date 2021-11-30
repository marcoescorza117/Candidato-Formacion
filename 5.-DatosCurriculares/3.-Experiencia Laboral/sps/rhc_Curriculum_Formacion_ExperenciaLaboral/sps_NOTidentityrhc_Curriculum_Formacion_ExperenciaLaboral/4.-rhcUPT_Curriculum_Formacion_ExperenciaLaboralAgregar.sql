CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralAgregar]
	 @idCurriculumFormacion INT 
	,@puesto VARCHAR (150) 
	,@actividades VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralAgregarDatos]
		 @idCurriculumFormacion
		,@puesto
		,@actividades
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

