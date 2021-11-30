CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PaisAgregar]
	 @idPais INT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PaisAgregarDatos]
		 @idPais
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END