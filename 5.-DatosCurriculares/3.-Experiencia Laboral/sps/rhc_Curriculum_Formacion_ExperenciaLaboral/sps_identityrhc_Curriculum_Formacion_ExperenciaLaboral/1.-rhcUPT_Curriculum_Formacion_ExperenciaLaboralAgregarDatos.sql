CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralAgregarDatos]
	 @puesto VARCHAR (150) 
	,@actividades VARCHAR (1) 
	,@idCurriculumFormacion INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Curriculum_Formacion_ExperenciaLaboral 
	(
		  puesto
		 ,actividades
	)
	VALUES
	(
		  @puesto
		 ,@actividades
	)
	SET @idCurriculumFormacion = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END