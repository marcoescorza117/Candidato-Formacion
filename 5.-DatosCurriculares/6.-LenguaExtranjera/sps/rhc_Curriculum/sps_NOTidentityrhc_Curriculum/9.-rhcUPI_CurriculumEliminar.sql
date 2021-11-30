CREATE PROCEDURE [dbo].[rhcUPI_CurriculumEliminar]
	 @idCurriculum INT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_CurriculumEliminar]
		 @idCurriculum 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

