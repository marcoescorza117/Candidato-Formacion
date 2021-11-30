CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoEliminarDatos]

	 @idCurriculumFormacionDocumento BIGINT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	DELETE FROM rhc_Curriculum_Formacion_Documento 
	WHERE idCurriculumFormacionDocumento = @idCurriculumFormacionDocumento 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END