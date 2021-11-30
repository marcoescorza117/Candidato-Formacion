CREATE PROCEDURE [dbo].[rhcUPT_IdiomaAgregar]
	 @idIdioma SMALLINT 
	,@idioma VARCHAR (100) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_IdiomaAgregarDatos]
		 @idIdioma
		,@idioma
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

