CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idDocumento BIGINT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacionDocumento BIGINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idCurriculumFormacionDocumento, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoAgregar]
		 @idCurriculumFormacion
		,@idDocumento
		,@usuarioRealizo
		,@idCurriculumFormacionDocumento OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoModificar]
		 @idCurriculumFormacion
		,@idDocumento
		,@usuarioRealizo
		,@idCurriculumFormacionDocumento  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END