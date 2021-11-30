CREATE PROCEDURE [dbo].[rhcUPI_Idioma_TipoCertificacionAgregarModificar]
	 @idIdioma SMALLINT 
	,@tipoCertificacion VARCHAR (150) 
	,@usuarioRealizo VARCHAR (60)
	,@idIdiomaTipoCertificacion SMALLINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Idioma_TipoCertificacionAgregarModificar]
		 @idIdioma
		,@tipoCertificacion
		,@usuarioRealizo
		,@idIdiomaTipoCertificacion OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT
END