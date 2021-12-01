CREATE PROCEDURE [dbo].[rhcUPI_CurriculumAgregarModificar]
	 @idPersona INT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculum INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_CurriculumAgregarModificar]
		 @idPersona
		,@usuarioRealizo
		,@idCurriculum OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT
END