CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadAgregarDatos]
	 @fechaInicio DATETIME 
	,@fechaTermino DATETIME 
	,@idCurriculumFormacion INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Curriculum_Formacion_Periodicidad 
	(
		  fechaInicio
		 ,fechaTermino
	)
	VALUES
	(
		  @fechaInicio
		 ,@fechaTermino
	)
	SET @idCurriculumFormacion = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END