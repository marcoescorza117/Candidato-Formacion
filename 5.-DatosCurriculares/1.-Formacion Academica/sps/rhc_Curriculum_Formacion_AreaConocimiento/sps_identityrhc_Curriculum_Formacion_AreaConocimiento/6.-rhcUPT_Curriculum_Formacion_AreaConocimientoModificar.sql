CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_AreaConocimientoModificar]
	 @idAreaConocimiento INT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_AreaConocimientoModificarDatos]
		 @idAreaConocimiento
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
END