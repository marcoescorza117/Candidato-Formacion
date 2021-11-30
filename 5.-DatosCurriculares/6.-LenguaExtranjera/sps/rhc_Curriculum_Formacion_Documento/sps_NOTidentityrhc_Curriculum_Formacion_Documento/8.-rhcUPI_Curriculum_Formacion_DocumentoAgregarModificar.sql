CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_DocumentoAgregarModificar]
	 @idCurriculumFormacionDocumento BIGINT 
	,@idCurriculumFormacion INT 
	,@idDocumento BIGINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoAgregarModificar]
		 @idCurriculumFormacionDocumento
		,@idCurriculumFormacion
		,@idDocumento
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END