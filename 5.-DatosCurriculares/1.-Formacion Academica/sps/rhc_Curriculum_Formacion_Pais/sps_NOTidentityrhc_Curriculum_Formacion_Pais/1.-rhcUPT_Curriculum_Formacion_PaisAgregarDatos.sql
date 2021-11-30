CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PaisAgregarDatos]
	 @idCurriculumFormacion INT
	,@idPais INT 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Pais] ON 
 	INSERT INTO rhc_Curriculum_Formacion_Pais 
	(
		 idPais
		,idCurriculumFormacion
	)
	VALUES	(
		 @idPais
		,@idCurriculumFormacion
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Pais] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

