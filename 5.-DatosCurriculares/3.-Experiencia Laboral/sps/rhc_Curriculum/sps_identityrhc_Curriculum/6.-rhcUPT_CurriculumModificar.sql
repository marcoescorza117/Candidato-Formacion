CREATE PROCEDURE [dbo].[rhcUPT_CurriculumModificar]
	 @idPersona INT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculum INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_CurriculumModificarDatos]
		 @idPersona
		,@idCurriculum  
		,@noError OUTPUT
		,@mensaje OUTPUT
END