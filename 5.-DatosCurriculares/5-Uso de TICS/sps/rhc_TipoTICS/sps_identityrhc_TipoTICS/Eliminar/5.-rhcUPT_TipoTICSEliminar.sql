CREATE PROCEDURE [dbo].[rhcUPT_TipoTICSEliminar]
	 @idTipoTICS SMALLINT OUTPUT
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_TipoTICSEliminarDatos]
		 @idTipoTICS 
		,@noError OUTPUT
		,@mensaje OUTPUT
END