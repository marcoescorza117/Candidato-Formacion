CREATE PROCEDURE [dbo].[rhcUPT_IdiomaAgregarModificar]
	 @idIdioma SMALLINT 
	,@idioma VARCHAR (100) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Idioma 
			 WHERE idIdioma = @idIdioma 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_IdiomaAgregar]
		 @idIdioma
		,@idioma
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_IdiomaModificar]
		 @idIdioma
		,@idioma
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

