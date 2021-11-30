CREATE PROCEDURE [dbo].[rhcUPI_IdiomaEliminar]
	 @idIdioma SMALLINT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_IdiomaEliminar]
		 @idIdioma 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END