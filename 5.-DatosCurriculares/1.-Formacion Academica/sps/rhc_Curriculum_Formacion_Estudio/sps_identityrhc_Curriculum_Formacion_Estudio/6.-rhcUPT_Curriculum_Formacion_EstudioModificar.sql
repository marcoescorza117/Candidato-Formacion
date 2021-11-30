CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_EstudioModificar]
	 @idProgramaEducativo INT 
	,@estudio VARCHAR (150) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_EstudioModificarDatos]
		 @idProgramaEducativo
		,@estudio
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
END