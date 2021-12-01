CREATE PROCEDURE [dbo].[rhcUPT_CurriculumAgregarDatos]
	 @idPersona INT 
	,@idCurriculum INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Curriculum 
	(
		  idPersona
	)
	VALUES
	(
		  @idPersona
	)
	SET @idCurriculum = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END