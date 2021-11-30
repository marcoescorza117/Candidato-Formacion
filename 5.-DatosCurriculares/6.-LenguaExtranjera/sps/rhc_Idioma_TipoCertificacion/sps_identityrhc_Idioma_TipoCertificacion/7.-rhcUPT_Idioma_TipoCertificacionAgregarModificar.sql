CREATE PROCEDURE [dbo].[rhcUPT_Idioma_TipoCertificacionAgregarModificar]
	 @idIdioma SMALLINT 
	,@tipoCertificacion VARCHAR (150) 
	,@usuarioRealizo VARCHAR (60)
	,@idIdiomaTipoCertificacion SMALLINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idIdiomaTipoCertificacion, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Idioma_TipoCertificacionAgregar]
		 @idIdioma
		,@tipoCertificacion
		,@usuarioRealizo
		,@idIdiomaTipoCertificacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Idioma_TipoCertificacionModificar]
		 @idIdioma
		,@tipoCertificacion
		,@usuarioRealizo
		,@idIdiomaTipoCertificacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END