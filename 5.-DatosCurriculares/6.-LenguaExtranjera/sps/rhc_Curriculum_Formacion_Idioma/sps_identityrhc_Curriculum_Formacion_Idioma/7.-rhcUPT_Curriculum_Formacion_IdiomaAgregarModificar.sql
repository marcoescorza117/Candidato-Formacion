CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaAgregarModificar]
	 @idIdioma SMALLINT 
	,@idIdiomaTipoCertificacion SMALLINT 
	,@nivel VARCHAR (25) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idCurriculumFormacion, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaAgregar]
		 @idIdioma
		,@idIdiomaTipoCertificacion
		,@nivel
		,@usuarioRealizo
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaModificar]
		 @idIdioma
		,@idIdiomaTipoCertificacion
		,@nivel
		,@usuarioRealizo
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END