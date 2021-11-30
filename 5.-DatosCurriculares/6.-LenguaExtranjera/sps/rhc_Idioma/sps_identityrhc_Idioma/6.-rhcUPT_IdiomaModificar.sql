CREATE PROCEDURE [dbo].[rhcUPT_IdiomaModificar]
	 @idioma VARCHAR (100) 
	,@usuarioRealizo VARCHAR (60)
	,@idIdioma SMALLINT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_IdiomaModificarDatos]
		 @idioma
		,@idIdioma  
		,@noError OUTPUT
		,@mensaje OUTPUT
END