CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionAgregarModificar]
	 @idInstitucion INT 
	,@institucion VARCHAR (250) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idCurriculumFormacion, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionAgregar]
		 @idInstitucion
		,@institucion
		,@usuarioRealizo
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionModificar]
		 @idInstitucion
		,@institucion
		,@usuarioRealizo
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END