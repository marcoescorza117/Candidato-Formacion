CREATE PROCEDURE [dbo].[rhcUPT_Persona_Pariente_AdscripcionAgregar]
	 @idPersonaPariente INT 
	,@adscripcion VARCHAR (120) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_Pariente_AdscripcionAgregarDatos]
		 @idPersonaPariente
		,@adscripcion
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

