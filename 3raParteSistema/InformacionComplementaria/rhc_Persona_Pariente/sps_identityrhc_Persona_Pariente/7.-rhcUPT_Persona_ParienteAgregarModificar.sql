CREATE PROCEDURE [dbo].[rhcUPT_Persona_ParienteAgregarModificar]
	 @idPersona INT 
	,@idTipoParentesco TINYINT 
	,@paterno VARCHAR (30) 
	,@materno VARCHAR (30) 
	,@nombres VARCHAR (40) 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaPariente INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idPersonaPariente, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Persona_ParienteAgregar]
		 @idPersona
		,@idTipoParentesco
		,@paterno
		,@materno
		,@nombres
		,@usuarioRealizo
		,@idPersonaPariente OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Persona_ParienteModificar]
		 @idPersona
		,@idTipoParentesco
		,@paterno
		,@materno
		,@nombres
		,@usuarioRealizo
		,@idPersonaPariente  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END