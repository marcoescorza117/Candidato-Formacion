CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_EstudioAgregarDatos]
	 @idCurriculumFormacion INT
	,@idProgramaEducativo INT 
	,@estudio VARCHAR (150) 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Estudio] ON 
 	INSERT INTO rhc_Curriculum_Formacion_Estudio 
	(
		 idProgramaEducativo
		,estudio
		,idCurriculumFormacion
	)
	VALUES	(
		 @idProgramaEducativo
		,@estudio
		,@idCurriculumFormacion
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Estudio] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

