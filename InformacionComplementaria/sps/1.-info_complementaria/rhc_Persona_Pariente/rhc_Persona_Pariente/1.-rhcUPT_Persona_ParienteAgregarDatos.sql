CREATE PROCEDURE [dbo].[rhcUPT_Persona_ParienteAgregarDatos]
	 @idPersona INT 
	,@idTipoParentesco TINYINT 
	,@paterno VARCHAR (30) 
	,@materno VARCHAR (30) 
	,@nombres VARCHAR (40) 
	,@idPersonaPariente INT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	INSERT INTO rhc_Persona_Pariente 
	(
		  idPersona
		 ,idTipoParentesco
		 ,paterno
		 ,materno
		 ,nombres
	)
	VALUES
	(
		  @idPersona
		 ,@idTipoParentesco
		 ,@paterno
		 ,@materno
		 ,@nombres
	)
	SET @idPersonaPariente = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END