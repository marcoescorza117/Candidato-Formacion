CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoAgregarDatos]
	 @idCurriculumFormacion INT 
	,@idDocumento BIGINT 
	,@idCurriculumFormacionDocumento BIGINT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Curriculum_Formacion_Documento 
	(
		  idCurriculumFormacion
		 ,idDocumento
	)
	VALUES
	(
		  @idCurriculumFormacion
		 ,@idDocumento
	)
	SET @idCurriculumFormacionDocumento = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END