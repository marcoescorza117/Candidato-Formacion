CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaAgregar]
	 @idIdioma SMALLINT 
	,@idIdiomaTipoCertificacion SMALLINT 
	,@nivel VARCHAR (25) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaAgregarDatos]
		 @idIdioma
		,@idIdiomaTipoCertificacion
		,@nivel
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END