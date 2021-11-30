CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaModificarDatos]
	 @idIdioma SMALLINT 
	,@idIdiomaTipoCertificacion SMALLINT 
	,@nivel VARCHAR (25) 

	,@idCurriculumFormacion INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Curriculum_Formacion_Idioma SET 
		 idIdioma = @idIdioma
		,idIdiomaTipoCertificacion = @idIdiomaTipoCertificacion
		,nivel = @nivel
 

		WHERE idCurriculumFormacion = @idCurriculumFormacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END