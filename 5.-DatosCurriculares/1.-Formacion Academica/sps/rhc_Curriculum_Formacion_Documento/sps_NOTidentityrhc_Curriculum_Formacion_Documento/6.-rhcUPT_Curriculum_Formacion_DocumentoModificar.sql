CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoModificar]
	 @idCurriculumFormacionDocumento BIGINT 
	,@idCurriculumFormacion INT 
	,@idDocumento BIGINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoModificarDatos]
		 @idCurriculumFormacionDocumento
		,@idCurriculumFormacion
		,@idDocumento
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

