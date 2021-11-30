CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionAgregarDatos]
	 @idInstitucion INT 
	,@institucion VARCHAR (250) 
	,@idCurriculumFormacion INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Curriculum_Formacion_Institucion 
	(
		  idInstitucion
		 ,institucion
	)
	VALUES
	(
		  @idInstitucion
		 ,@institucion
	)
	SET @idCurriculumFormacion = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END