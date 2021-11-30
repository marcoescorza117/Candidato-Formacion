CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_AreaConocimientoAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idAreaConocimiento INT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum_Formacion_AreaConocimiento 
			 WHERE idCurriculumFormacion = @idCurriculumFormacion 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_AreaConocimientoAgregar]
		 @idCurriculumFormacion
		,@idAreaConocimiento
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_AreaConocimientoModificar]
		 @idCurriculumFormacion
		,@idAreaConocimiento
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO
