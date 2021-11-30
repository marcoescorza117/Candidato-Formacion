CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PaisEliminarDatos]

	 @idCurriculumFormacion INT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	DELETE FROM rhc_Curriculum_Formacion_Pais 
	WHERE idCurriculumFormacion = @idCurriculumFormacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

