CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_DocumentoAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idDocumento BIGINT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacionDocumento BIGINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoAgregarModificar]
		 @idCurriculumFormacion
		,@idDocumento
		,@usuarioRealizo
		,@idCurriculumFormacionDocumento OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT
END