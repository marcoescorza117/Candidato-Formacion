CREATE PROCEDURE [dbo].[rhcUPI_TipoTICSAgregarModificar]
	 @tipoTICS VARCHAR (120) 
	,@orden SMALLINT 
	,@usuarioRealizo VARCHAR (60)
	,@idTipoTICS SMALLINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_TipoTICSAgregarModificar]
		 @tipoTICS
		,@orden
		,@usuarioRealizo
		,@idTipoTICS OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT
END