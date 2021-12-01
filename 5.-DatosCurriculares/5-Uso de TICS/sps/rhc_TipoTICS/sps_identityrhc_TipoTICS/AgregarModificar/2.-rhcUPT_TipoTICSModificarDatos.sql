CREATE PROCEDURE [dbo].[rhcUPT_TipoTICSModificarDatos]
	 @tipoTICS VARCHAR (120) 
	,@orden SMALLINT 

	,@idTipoTICS SMALLINT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_TipoTICS SET 
		 tipoTICS = @tipoTICS
		,orden = @orden
 

		WHERE idTipoTICS = @idTipoTICS 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END