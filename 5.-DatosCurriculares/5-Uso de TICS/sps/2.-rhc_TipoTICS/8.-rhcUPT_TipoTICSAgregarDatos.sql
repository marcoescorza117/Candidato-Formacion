CREATE PROCEDURE [dbo].[rhcUPT_TipoTICSAgregarDatos]
	 @tipoTICS VARCHAR (120) 
	,@orden SMALLINT 
	,@idTipoTICS SMALLINT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_TipoTICS 
	(
		  tipoTICS
		 ,orden
	)
	VALUES
	(
		  @tipoTICS
		 ,@orden
	)
	SET @idTipoTICS = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END