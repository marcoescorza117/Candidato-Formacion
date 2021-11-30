CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoAgregar]
	 @idCurriculumFormacionDocumento BIGINT 
	,@idCurriculumFormacion INT 
	,@idDocumento BIGINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoAgregarDatos]
		 @idCurriculumFormacionDocumento
		,@idCurriculumFormacion
		,@idDocumento
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

