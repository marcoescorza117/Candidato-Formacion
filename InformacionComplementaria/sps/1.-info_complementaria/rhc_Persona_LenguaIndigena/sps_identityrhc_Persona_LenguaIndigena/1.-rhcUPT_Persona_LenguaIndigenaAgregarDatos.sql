CREATE PROCEDURE [dbo].[rhcUPT_Persona_LenguaIndigenaAgregarDatos]
	 @idPersona INT 
	,@idLenguaIndigena SMALLINT 
	,@idPersonaLenguaIndigena INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Persona_LenguaIndigena 
	(
		  idPersona
		 ,idLenguaIndigena
	)
	VALUES
	(
		  @idPersona
		 ,@idLenguaIndigena
	)
	SET @idPersonaLenguaIndigena = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END