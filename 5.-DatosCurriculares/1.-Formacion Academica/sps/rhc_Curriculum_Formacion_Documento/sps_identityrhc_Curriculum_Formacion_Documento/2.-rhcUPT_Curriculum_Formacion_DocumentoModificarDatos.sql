CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoModificarDatos]
	 @idCurriculumFormacion INT 
	,@idDocumento BIGINT 

	,@idCurriculumFormacionDocumento BIGINT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Curriculum_Formacion_Documento SET 
		 idCurriculumFormacion = @idCurriculumFormacion
		,idDocumento = @idDocumento
 

		WHERE idCurriculumFormacionDocumento = @idCurriculumFormacionDocumento 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END