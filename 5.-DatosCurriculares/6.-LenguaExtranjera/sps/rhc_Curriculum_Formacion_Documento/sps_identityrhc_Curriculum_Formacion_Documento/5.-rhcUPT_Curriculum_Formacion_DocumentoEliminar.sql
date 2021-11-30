CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoEliminar]
	 @idCurriculumFormacionDocumento BIGINT OUTPUT
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DocumentoEliminarDatos]
		 @idCurriculumFormacionDocumento 
		,@noError OUTPUT
		,@mensaje OUTPUT
END