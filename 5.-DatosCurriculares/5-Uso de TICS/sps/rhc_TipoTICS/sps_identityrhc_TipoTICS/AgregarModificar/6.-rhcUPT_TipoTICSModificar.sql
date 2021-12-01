CREATE PROCEDURE [dbo].[rhcUPT_TipoTICSModificar]
	 @tipoTICS VARCHAR (120) 
	,@orden SMALLINT 
	,@usuarioRealizo VARCHAR (60)
	,@idTipoTICS SMALLINT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_TipoTICSModificarDatos]
		 @tipoTICS
		,@orden
		,@idTipoTICS  
		,@noError OUTPUT
		,@mensaje OUTPUT
END