CREATE PROCEDURE [dbo].[rhcUPT_CurriculumAgregar]
	 @idPersona INT 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculum INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_CurriculumAgregarDatos]
		 @idPersona
		,@idCurriculum OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END