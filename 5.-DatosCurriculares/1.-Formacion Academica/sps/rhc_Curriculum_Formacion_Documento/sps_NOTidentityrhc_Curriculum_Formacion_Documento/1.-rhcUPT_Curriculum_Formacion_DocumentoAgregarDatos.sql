CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoAgregarDatos]
	 @idCurriculumFormacionDocumento BIGINT
	,@idCurriculumFormacion INT 
	,@idDocumento BIGINT 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Documento] ON 
 	INSERT INTO rhc_Curriculum_Formacion_Documento 
	(
		 idCurriculumFormacion
		,idDocumento
		,idCurriculumFormacionDocumento
	)
	VALUES	(
		 @idCurriculumFormacion
		,@idDocumento
		,@idCurriculumFormacionDocumento
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Documento] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

