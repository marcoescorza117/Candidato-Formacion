CREATE PROCEDURE [dbo].[rhcUPT_Idioma_TipoCertificacionAgregarModificar]
	 @idIdiomaTipoCertificacion SMALLINT 
	,@idIdioma SMALLINT 
	,@tipoCertificacion VARCHAR (150) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Idioma_TipoCertificacion 
			 WHERE idIdiomaTipoCertificacion = @idIdiomaTipoCertificacion 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Idioma_TipoCertificacionAgregar]
		 @idIdiomaTipoCertificacion
		,@idIdioma
		,@tipoCertificacion
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Idioma_TipoCertificacionModificar]
		 @idIdiomaTipoCertificacion
		,@idIdioma
		,@tipoCertificacion
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

