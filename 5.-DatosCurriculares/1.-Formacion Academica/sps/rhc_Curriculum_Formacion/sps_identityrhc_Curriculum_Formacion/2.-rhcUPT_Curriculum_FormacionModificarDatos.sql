CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_FormacionModificarDatos]
	 @idCurriculum INT 

	,@idCurriculumFormacion INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Curriculum_Formacion SET 
		 idCurriculum = @idCurriculum
 

		WHERE idCurriculumFormacion = @idCurriculumFormacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END