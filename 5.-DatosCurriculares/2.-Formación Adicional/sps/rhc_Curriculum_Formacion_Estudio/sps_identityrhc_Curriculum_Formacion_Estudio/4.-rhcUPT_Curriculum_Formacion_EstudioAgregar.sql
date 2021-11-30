CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_EstudioAgregar]
	 @idProgramaEducativo INT 
	,@estudio VARCHAR (150) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_EstudioAgregarDatos]
		 @idProgramaEducativo
		,@estudio
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END