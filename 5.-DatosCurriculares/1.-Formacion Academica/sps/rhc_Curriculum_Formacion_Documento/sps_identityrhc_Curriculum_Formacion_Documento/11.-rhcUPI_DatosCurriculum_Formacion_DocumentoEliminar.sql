CREATE PROCEDURE [dbo].[rhcUPI_DatosCurriculum_Formacion_DocumentoEliminar]
	 @idCurriculumFormacionDocumento BIGINT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPI_Curriculum_Formacion_DocumentoEliminar]

		 @idCurriculumFormacionDocumento 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0 
	BEGIN
		RETURN
	END
END