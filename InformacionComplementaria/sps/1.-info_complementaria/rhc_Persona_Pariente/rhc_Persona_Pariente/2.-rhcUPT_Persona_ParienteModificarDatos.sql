CREATE PROCEDURE [dbo].[rhcUPT_Persona_ParienteModificarDatos]
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
	UPDATE rhc_Persona_Pariente SET 
		 idPersona = @idPersona
		,idTipoParentesco = @idTipoParentesco
		,paterno = @paterno
		,materno = @materno
		,nombres = @nombres
 

		WHERE idPersonaPariente = @idPersonaPariente 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END