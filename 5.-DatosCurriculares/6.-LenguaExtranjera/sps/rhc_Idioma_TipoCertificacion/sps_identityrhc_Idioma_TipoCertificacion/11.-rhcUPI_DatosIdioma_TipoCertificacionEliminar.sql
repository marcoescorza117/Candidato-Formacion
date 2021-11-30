CREATE PROCEDURE [dbo].[rhcUPI_DatosIdioma_TipoCertificacionEliminar]
	 @idIdiomaTipoCertificacion SMALLINT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPI_Idioma_TipoCertificacionEliminar]

		 @idIdiomaTipoCertificacion 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT

	IF ISNULL(@noError,0) != 0 
	BEGIN
		RETURN
	END
END