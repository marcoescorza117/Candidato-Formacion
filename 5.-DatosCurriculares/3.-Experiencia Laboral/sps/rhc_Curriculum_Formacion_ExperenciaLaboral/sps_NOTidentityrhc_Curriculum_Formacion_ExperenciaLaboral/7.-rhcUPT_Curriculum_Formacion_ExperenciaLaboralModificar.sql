CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralAgregarModificar]
	 @idCurriculumFormacion INT 
	,@puesto VARCHAR (150) 
	,@actividades VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum_Formacion_ExperenciaLaboral 
			 WHERE idCurriculumFormacion = @idCurriculumFormacion 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralAgregar]
		 @idCurriculumFormacion
		,@puesto
		,@actividades
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralModificar]
		 @idCurriculumFormacion
		,@puesto
		,@actividades
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

