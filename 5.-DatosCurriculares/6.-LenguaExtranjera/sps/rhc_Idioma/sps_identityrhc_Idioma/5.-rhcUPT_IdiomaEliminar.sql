CREATE PROCEDURE [dbo].[rhcUPT_IdiomaEliminar]
	 @idIdioma SMALLINT OUTPUT
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_IdiomaEliminarDatos]
		 @idIdioma 
		,@noError OUTPUT
		,@mensaje OUTPUT
END