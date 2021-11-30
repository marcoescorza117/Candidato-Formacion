CREATE PROCEDURE [dbo].[rhcUPI_CurriculumAgregarModificar]
	 @idCurriculum INT 
	,@idPersona INT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_CurriculumAgregarModificar]
		 @idCurriculum
		,@idPersona
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END