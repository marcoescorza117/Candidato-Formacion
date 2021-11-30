CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idInstitucion INT 
	,@institucion VARCHAR (250) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum_Formacion_Institucion 
			 WHERE idCurriculumFormacion = @idCurriculumFormacion 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionAgregar]
		 @idCurriculumFormacion
		,@idInstitucion
		,@institucion
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionModificar]
		 @idCurriculumFormacion
		,@idInstitucion
		,@institucion
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

