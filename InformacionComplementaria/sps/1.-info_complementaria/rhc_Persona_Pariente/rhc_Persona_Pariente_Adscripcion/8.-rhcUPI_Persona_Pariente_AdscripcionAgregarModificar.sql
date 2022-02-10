CREATE PROCEDURE [dbo].[rhcUPI_Persona_Pariente_AdscripcionAgregarModificar]
	 @idPersonaPariente INT 
	,@adscripcion VARCHAR (120) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Persona_Pariente_AdscripcionAgregarModificar]
		 @idPersonaPariente
		,@adscripcion
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END