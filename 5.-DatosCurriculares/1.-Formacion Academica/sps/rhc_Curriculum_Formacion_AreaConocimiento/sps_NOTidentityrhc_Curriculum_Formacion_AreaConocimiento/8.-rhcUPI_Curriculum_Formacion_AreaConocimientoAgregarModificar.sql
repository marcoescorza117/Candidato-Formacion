CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_AreaConocimientoAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idAreaConocimiento INT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_AreaConocimientoAgregarModificar]
		 @idCurriculumFormacion
		,@idAreaConocimiento
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END