CREATE PROCEDURE [dbo].[rhcUPI_DatosIdiomaEliminar]
	 @idIdioma SMALLINT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPI_IdiomaEliminar]

		 @idIdioma 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0 
	BEGIN
		RETURN
	END
END

GO

