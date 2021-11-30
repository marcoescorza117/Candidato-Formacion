CREATE PROCEDURE [dbo].[rhcUPI_IdiomaAgregarModificar]
	 @idIdioma SMALLINT 
	,@idioma VARCHAR (100) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_IdiomaAgregarModificar]
		 @idIdioma
		,@idioma
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END