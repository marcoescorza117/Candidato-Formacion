CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaModificar]
	 @idIdioma SMALLINT 
	,@idIdiomaTipoCertificacion SMALLINT 
	,@nivel VARCHAR (25) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaModificarDatos]
		 @idIdioma
		,@idIdiomaTipoCertificacion
		,@nivel
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
END