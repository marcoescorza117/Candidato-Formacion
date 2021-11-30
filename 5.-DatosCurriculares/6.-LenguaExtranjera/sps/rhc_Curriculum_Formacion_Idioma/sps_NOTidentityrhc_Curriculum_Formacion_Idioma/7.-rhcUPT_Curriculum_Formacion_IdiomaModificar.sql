CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idIdioma SMALLINT 
	,@idIdiomaTipoCertificacion SMALLINT 
	,@nivel VARCHAR (25) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum_Formacion_Idioma 
			 WHERE idCurriculumFormacion = @idCurriculumFormacion 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaAgregar]
		 @idCurriculumFormacion
		,@idIdioma
		,@idIdiomaTipoCertificacion
		,@nivel
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaModificar]
		 @idCurriculumFormacion
		,@idIdioma
		,@idIdiomaTipoCertificacion
		,@nivel
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

