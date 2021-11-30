CREATE PROCEDURE [dbo].[rhcUPT_CurriculumModificar]
	 @idCurriculum INT 
	,@idPersona INT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_CurriculumModificarDatos]
		 @idCurriculum
		,@idPersona
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

