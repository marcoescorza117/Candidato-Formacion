CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_AreaConocimientoAgregar]
	 @idAreaConocimiento INT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_AreaConocimientoAgregarDatos]
		 @idAreaConocimiento
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END