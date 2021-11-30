CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaAgregar]
	 @idCurriculumFormacion INT 
	,@idIdioma SMALLINT 
	,@idIdiomaTipoCertificacion SMALLINT 
	,@nivel VARCHAR (25) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaAgregarDatos]
		 @idCurriculumFormacion
		,@idIdioma
		,@idIdiomaTipoCertificacion
		,@nivel
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

