CREATE PROCEDURE [dbo].[rhcUPT_CurriculumAgregarModificar]
	 @idPersona INT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculum INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idCurriculum, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_CurriculumAgregar]
		 @idPersona
		,@usuarioRealizo
		,@idCurriculum OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_CurriculumModificar]
		 @idPersona
		,@usuarioRealizo
		,@idCurriculum  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END