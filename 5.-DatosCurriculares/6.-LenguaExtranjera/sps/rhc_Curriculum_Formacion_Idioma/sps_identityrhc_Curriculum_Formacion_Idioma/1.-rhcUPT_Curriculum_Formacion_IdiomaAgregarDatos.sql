CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaAgregarDatos]
	 @idIdioma SMALLINT 
	,@idIdiomaTipoCertificacion SMALLINT 
	,@nivel VARCHAR (25) 
	,@idCurriculumFormacion INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Curriculum_Formacion_Idioma 
	(
		  idIdioma
		 ,idIdiomaTipoCertificacion
		 ,nivel
	)
	VALUES
	(
		  @idIdioma
		 ,@idIdiomaTipoCertificacion
		 ,@nivel
	)
	SET @idCurriculumFormacion = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END