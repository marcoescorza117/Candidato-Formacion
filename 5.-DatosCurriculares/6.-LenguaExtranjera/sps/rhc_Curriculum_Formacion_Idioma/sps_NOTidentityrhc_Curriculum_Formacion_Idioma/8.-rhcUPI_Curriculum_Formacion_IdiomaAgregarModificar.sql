CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_IdiomaAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idIdioma SMALLINT 
	,@idIdiomaTipoCertificacion SMALLINT 
	,@nivel VARCHAR (25) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaAgregarModificar]
		 @idCurriculumFormacion
		,@idIdioma
		,@idIdiomaTipoCertificacion
		,@nivel
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END