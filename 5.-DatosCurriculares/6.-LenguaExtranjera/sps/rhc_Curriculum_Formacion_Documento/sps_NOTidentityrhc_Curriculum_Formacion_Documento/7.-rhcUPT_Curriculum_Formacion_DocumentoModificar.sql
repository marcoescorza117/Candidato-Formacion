CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoAgregarModificar]
	 @idCurriculumFormacionDocumento BIGINT 
	,@idCurriculumFormacion INT 
	,@idDocumento BIGINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum_Formacion_Documento 
			 WHERE idCurriculumFormacionDocumento = @idCurriculumFormacionDocumento 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoAgregar]
		 @idCurriculumFormacionDocumento
		,@idCurriculumFormacion
		,@idDocumento
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoModificar]
		 @idCurriculumFormacionDocumento
		,@idCurriculumFormacion
		,@idDocumento
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

