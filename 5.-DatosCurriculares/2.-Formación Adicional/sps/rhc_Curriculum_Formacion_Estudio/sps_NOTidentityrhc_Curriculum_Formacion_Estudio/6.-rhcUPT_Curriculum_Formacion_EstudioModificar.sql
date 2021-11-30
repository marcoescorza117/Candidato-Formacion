CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_EstudioModificar]
	 @idCurriculumFormacion INT 
	,@idProgramaEducativo INT 
	,@estudio VARCHAR (150) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_EstudioModificarDatos]
		 @idCurriculumFormacion
		,@idProgramaEducativo
		,@estudio
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

