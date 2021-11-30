CREATE PROCEDURE [dbo].[rhcUPT_CurriculumEliminar]
	 @idCurriculum INT OUTPUT
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_CurriculumEliminarDatos]
		 @idCurriculum 
		,@noError OUTPUT
		,@mensaje OUTPUT
END