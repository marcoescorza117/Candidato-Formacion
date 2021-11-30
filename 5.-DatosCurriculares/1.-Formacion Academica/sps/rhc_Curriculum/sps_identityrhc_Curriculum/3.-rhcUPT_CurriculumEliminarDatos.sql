CREATE PROCEDURE [dbo].[rhcUPT_CurriculumEliminarDatos]

	 @idCurriculum INT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	DELETE FROM rhc_Curriculum 
	WHERE idCurriculum = @idCurriculum 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END