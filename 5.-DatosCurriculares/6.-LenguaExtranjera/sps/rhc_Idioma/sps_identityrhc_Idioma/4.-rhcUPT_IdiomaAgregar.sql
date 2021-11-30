CREATE PROCEDURE [dbo].[rhcUPT_IdiomaAgregar]
	 @idioma VARCHAR (100) 
	,@usuarioRealizo VARCHAR (60)
	,@idIdioma SMALLINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_IdiomaAgregarDatos]
		 @idioma
		,@idIdioma OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END