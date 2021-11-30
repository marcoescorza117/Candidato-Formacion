CREATE PROCEDURE [dbo].[rhcUPT_IdiomaModificar]
	 @idIdioma SMALLINT 
	,@idioma VARCHAR (100) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_IdiomaModificarDatos]
		 @idIdioma
		,@idioma
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

