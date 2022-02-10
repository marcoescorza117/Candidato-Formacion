CREATE PROCEDURE [dbo].[rhcUPI_Persona_LenguaIndigenaAgregarModificar]
	 @idPersona INT 
	,@idLenguaIndigena SMALLINT 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaLenguaIndigena INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Persona_LenguaIndigenaAgregarModificar]
		 @idPersona
		,@idLenguaIndigena
		,@usuarioRealizo
		,@idPersonaLenguaIndigena OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT
END