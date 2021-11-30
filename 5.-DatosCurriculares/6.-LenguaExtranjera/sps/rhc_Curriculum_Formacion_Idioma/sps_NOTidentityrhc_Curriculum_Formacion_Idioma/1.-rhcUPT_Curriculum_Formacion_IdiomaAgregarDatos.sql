CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_IdiomaAgregarDatos]
	 @idCurriculumFormacion INT
	,@idIdioma SMALLINT 
	,@idIdiomaTipoCertificacion SMALLINT 
	,@nivel VARCHAR (25) 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Idioma] ON 
 	INSERT INTO rhc_Curriculum_Formacion_Idioma 
	(
		 idIdioma
		,idIdiomaTipoCertificacion
		,nivel
		,idCurriculumFormacion
	)
	VALUES	(
		 @idIdioma
		,@idIdiomaTipoCertificacion
		,@nivel
		,@idCurriculumFormacion
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Idioma] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

