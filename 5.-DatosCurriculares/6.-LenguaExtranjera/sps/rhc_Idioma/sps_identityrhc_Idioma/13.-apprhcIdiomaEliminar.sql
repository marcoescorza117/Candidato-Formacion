CREATE PROCEDURE [app].[rhcIdiomaEliminar]
	 @idIdioma SMALLINT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN
	BEGIN TRANSACTION 
	BEGIN TRY
		EXECUTE [dbo].[rhcUPI_DatosIdiomaEliminar]

		 @idIdioma 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT

	END TRY
	BEGIN CATCH
		SET @noError = ERROR_NUMBER()
		SET @mensaje = ERROR_MESSAGE()
	END CATCH
	IF ISNULL(@noError, 0) <> 0
	BEGIN
		IF @@TRANCOUNT <>0
		BEGIN
			ROLLBACK TRANSACTION
		END
		RETURN
	END
	COMMIT TRANSACTION 
END