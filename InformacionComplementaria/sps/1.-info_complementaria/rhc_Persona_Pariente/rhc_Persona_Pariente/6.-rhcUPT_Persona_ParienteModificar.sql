CREATE PROCEDURE [dbo].[rhcUPT_Persona_ParienteModificar]
	 @idPersona INT 
	,@idTipoParentesco TINYINT 
	,@paterno VARCHAR (30) 
	,@materno VARCHAR (30) 
	,@nombres VARCHAR (40) 
	,@usuarioRealizo VARCHAR (60)
	,@idPersonaPariente INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_ParienteModificarDatos]
		 @idPersona
		,@idTipoParentesco
		,@paterno
		,@materno
		,@nombres
		,@idPersonaPariente  
		,@noError OUTPUT
		,@mensaje OUTPUT
END