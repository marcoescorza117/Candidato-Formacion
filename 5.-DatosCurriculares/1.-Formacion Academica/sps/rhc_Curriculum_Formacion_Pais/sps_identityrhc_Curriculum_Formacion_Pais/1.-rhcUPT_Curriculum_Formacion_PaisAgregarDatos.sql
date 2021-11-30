CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PaisAgregarDatos]
	 @idPais INT 
	,@idCurriculumFormacion INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Curriculum_Formacion_Pais 
	(
		  idPais
	)
	VALUES
	(
		  @idPais
	)
	SET @idCurriculumFormacion = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END