CREATE PROCEDURE [dbo].[rhcUPI_Idioma_TipoCertificacionEliminar]
	 @idIdiomaTipoCertificacion SMALLINT 
 	,@usuarioRealizo VARCHAR (60)
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Idioma_TipoCertificacionEliminar]
		 @idIdiomaTipoCertificacion 
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

