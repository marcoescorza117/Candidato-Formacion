CREATE PROCEDURE [dbo].[rhcUPT_Idioma_TipoCertificacionModificar]
	 @idIdiomaTipoCertificacion SMALLINT 
	,@idIdioma SMALLINT 
	,@tipoCertificacion VARCHAR (150) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Idioma_TipoCertificacionModificarDatos]
		 @idIdiomaTipoCertificacion
		,@idIdioma
		,@tipoCertificacion
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

