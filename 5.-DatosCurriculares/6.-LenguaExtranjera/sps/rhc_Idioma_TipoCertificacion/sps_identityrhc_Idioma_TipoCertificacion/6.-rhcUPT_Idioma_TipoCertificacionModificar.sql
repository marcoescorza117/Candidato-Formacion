CREATE PROCEDURE [dbo].[rhcUPT_Idioma_TipoCertificacionModificar]
	 @idIdioma SMALLINT 
	,@tipoCertificacion VARCHAR (150) 
	,@usuarioRealizo VARCHAR (60)
	,@idIdiomaTipoCertificacion SMALLINT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Idioma_TipoCertificacionModificarDatos]
		 @idIdioma
		,@tipoCertificacion
		,@idIdiomaTipoCertificacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
END