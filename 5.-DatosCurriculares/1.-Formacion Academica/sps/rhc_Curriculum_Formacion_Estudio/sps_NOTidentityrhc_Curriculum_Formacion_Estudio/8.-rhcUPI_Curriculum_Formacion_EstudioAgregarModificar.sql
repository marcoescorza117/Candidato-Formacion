CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_EstudioAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idProgramaEducativo INT 
	,@estudio VARCHAR (150) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_EstudioAgregarModificar]
		 @idCurriculumFormacion
		,@idProgramaEducativo
		,@estudio
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END