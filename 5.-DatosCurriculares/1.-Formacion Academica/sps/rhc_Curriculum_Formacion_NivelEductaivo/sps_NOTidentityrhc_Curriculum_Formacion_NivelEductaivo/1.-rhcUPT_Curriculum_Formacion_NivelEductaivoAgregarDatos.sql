CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_NivelEductaivoAgregarDatos]
	 @idCurriculumFormacion INT
	,@idNivelEducativo TINYINT 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_NivelEductaivo] ON 
 	INSERT INTO rhc_Curriculum_Formacion_NivelEductaivo 
	(
		 idNivelEducativo
		,idCurriculumFormacion
	)
	VALUES	(
		 @idNivelEducativo
		,@idCurriculumFormacion
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_NivelEductaivo] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

