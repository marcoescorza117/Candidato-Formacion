CREATE PROCEDURE [dbo].[rhcUPT_Persona_LenguaIndigenaAgregarModificar]
	 @idPersona INT 
	,@idLenguaIndigena SMALLINT 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaLenguaIndigena INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idPersonaLenguaIndigena, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Persona_LenguaIndigenaAgregar]
		 @idPersona
		,@idLenguaIndigena
		,@usuarioRealizo
		,@idPersonaLenguaIndigena OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Persona_LenguaIndigenaModificar]
		 @idPersona
		,@idLenguaIndigena
		,@usuarioRealizo
		,@idPersonaLenguaIndigena  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END