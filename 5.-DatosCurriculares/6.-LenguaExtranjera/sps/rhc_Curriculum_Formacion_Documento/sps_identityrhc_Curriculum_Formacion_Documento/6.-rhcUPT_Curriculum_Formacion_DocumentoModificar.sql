CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoModificar]
	 @idCurriculumFormacion INT 
	,@idDocumento BIGINT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacionDocumento BIGINT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoModificarDatos]
		 @idCurriculumFormacion
		,@idDocumento
		,@idCurriculumFormacionDocumento  
		,@noError OUTPUT
		,@mensaje OUTPUT
END