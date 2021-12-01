CREATE PROCEDURE [dbo].[rhcUPI_TipoTICSEliminar]
	 @idTipoTICS SMALLINT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_TipoTICSEliminar]
		 @idTipoTICS 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END