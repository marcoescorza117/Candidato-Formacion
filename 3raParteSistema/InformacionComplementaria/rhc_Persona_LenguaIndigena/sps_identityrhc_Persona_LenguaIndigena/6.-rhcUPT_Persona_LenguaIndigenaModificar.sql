CREATE PROCEDURE [dbo].[rhcUPT_Persona_LenguaIndigenaModificar]
	 @idPersona INT 
	,@idLenguaIndigena SMALLINT 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaLenguaIndigena INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_LenguaIndigenaModificarDatos]
		 @idPersona
		,@idLenguaIndigena
		,@idPersonaLenguaIndigena  
		,@noError OUTPUT
		,@mensaje OUTPUT
END