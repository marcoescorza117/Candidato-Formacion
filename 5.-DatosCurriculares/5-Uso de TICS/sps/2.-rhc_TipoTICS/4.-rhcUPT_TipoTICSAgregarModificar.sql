CREATE PROCEDURE [dbo].[rhcUPT_TipoTICSAgregarModificar]
	 @tipoTICS VARCHAR (120) 
	,@orden SMALLINT 
	,@usuarioRealizo VARCHAR (60)
	,@idTipoTICS SMALLINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idTipoTICS, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_TipoTICSAgregar]
		 @tipoTICS
		,@orden
		,@usuarioRealizo
		,@idTipoTICS OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_TipoTICSModificar]
		 @tipoTICS
		,@orden
		,@usuarioRealizo
		,@idTipoTICS  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END