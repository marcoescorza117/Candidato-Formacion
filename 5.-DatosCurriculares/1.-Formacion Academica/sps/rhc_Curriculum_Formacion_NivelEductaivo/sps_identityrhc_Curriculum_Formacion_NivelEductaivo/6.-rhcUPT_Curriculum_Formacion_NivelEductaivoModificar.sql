CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_NivelEductaivoModificar]
	 @idNivelEducativo TINYINT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_NivelEductaivoModificarDatos]
		 @idNivelEducativo
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
END