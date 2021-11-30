CREATE PROCEDURE [dbo].[rhcUPT_Idioma_TipoCertificacionAgregar]
	 @idIdioma SMALLINT 
	,@tipoCertificacion VARCHAR (150) 
	,@usuarioRealizo VARCHAR (60)
	,@idIdiomaTipoCertificacion SMALLINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Idioma_TipoCertificacionAgregarDatos]
		 @idIdioma
		,@tipoCertificacion
		,@idIdiomaTipoCertificacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END