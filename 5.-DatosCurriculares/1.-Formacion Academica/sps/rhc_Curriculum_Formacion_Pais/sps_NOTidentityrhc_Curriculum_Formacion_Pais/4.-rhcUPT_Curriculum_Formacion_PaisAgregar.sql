CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PaisAgregar]
	 @idCurriculumFormacion INT 
	,@idPais INT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PaisAgregarDatos]
		 @idCurriculumFormacion
		,@idPais
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

