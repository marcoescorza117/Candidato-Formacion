CREATE PROCEDURE [dbo].[rhcUPT_Persona_LenguaIndigenaAgregar]
	 @idPersona INT 
	,@idLenguaIndigena SMALLINT 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaLenguaIndigena INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_LenguaIndigenaAgregarDatos]
		 @idPersona
		,@idLenguaIndigena
		,@idPersonaLenguaIndigena OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END