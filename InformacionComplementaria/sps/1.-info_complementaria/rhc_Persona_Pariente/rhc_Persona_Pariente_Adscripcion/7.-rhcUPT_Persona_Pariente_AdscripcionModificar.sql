CREATE PROCEDURE [dbo].[rhcUPT_Persona_Pariente_AdscripcionAgregarModificar]
	 @idPersonaPariente INT 
	,@adscripcion VARCHAR (120) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Persona_Pariente_Adscripcion 
			 WHERE idPersonaPariente = @idPersonaPariente 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Persona_Pariente_AdscripcionAgregar]
		 @idPersonaPariente
		,@adscripcion
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Persona_Pariente_AdscripcionModificar]
		 @idPersonaPariente
		,@adscripcion
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

