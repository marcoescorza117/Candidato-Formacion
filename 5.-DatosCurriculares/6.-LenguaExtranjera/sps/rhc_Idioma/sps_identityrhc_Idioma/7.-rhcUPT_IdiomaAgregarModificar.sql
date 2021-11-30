CREATE PROCEDURE [dbo].[rhcUPT_IdiomaAgregarModificar]
	 @idioma VARCHAR (100) 
	,@usuarioRealizo VARCHAR (60)
	,@idIdioma SMALLINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idIdioma, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_IdiomaAgregar]
		 @idioma
		,@usuarioRealizo
		,@idIdioma OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_IdiomaModificar]
		 @idioma
		,@usuarioRealizo
		,@idIdioma  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END