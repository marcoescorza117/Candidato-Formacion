CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_AreaConocimientoModificar]
	 @idCurriculumFormacion INT 
	,@idAreaConocimiento INT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_AreaConocimientoModificarDatos]
		 @idCurriculumFormacion
		,@idAreaConocimiento
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

