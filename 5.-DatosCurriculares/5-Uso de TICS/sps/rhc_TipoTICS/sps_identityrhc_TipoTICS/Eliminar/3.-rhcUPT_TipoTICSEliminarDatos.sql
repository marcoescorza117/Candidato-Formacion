CREATE PROCEDURE [dbo].[rhcUPT_TipoTICSEliminarDatos]

	 @idTipoTICS SMALLINT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	DELETE FROM rhc_TipoTICS 
	WHERE idTipoTICS = @idTipoTICS 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END