CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_EstudioAgregarDatos]
	 @idProgramaEducativo INT 
	,@estudio VARCHAR (150) 
	,@idCurriculumFormacion INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Curriculum_Formacion_Estudio 
	(
		  idProgramaEducativo
		 ,estudio
	)
	VALUES
	(
		  @idProgramaEducativo
		 ,@estudio
	)
	SET @idCurriculumFormacion = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END