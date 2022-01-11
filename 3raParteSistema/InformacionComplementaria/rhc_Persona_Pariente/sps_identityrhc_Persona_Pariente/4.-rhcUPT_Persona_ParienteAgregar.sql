CREATE PROCEDURE [dbo].[rhcUPT_Persona_ParienteAgregar]
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
	EXECUTE [dbo].[rhcUPT_Persona_ParienteAgregarDatos]
		 @idPersona
		,@idTipoParentesco
		,@paterno
		,@materno
		,@nombres
		,@idPersonaPariente OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END