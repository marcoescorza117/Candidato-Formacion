CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionAgregar]
	 @idCurriculumFormacion INT 
	,@idInstitucion INT 
	,@institucion VARCHAR (250) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionAgregarDatos]
		 @idCurriculumFormacion
		,@idInstitucion
		,@institucion
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

