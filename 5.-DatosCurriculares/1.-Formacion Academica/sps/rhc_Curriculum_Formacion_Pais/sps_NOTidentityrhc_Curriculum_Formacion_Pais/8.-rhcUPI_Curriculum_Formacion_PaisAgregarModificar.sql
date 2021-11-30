CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_PaisAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idPais INT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PaisAgregarModificar]
		 @idCurriculumFormacion
		,@idPais
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END