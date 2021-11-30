CREATE PROCEDURE [dbo].[rhcUPI_Idioma_TipoCertificacionAgregarModificar]
	 @idIdiomaTipoCertificacion SMALLINT 
	,@idIdioma SMALLINT 
	,@tipoCertificacion VARCHAR (150) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Idioma_TipoCertificacionAgregarModificar]
		 @idIdiomaTipoCertificacion
		,@idIdioma
		,@tipoCertificacion
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END