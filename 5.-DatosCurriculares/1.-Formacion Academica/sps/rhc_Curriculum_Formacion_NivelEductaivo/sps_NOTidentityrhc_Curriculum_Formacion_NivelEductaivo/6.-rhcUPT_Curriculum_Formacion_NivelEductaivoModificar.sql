CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_NivelEductaivoModificar]
	 @idCurriculumFormacion INT 
	,@idNivelEducativo TINYINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_NivelEductaivoModificarDatos]
		 @idCurriculumFormacion
		,@idNivelEducativo
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

