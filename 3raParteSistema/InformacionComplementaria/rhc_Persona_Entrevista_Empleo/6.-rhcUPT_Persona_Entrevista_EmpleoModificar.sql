CREATE PROCEDURE [dbo].[rhcUPT_Persona_Entrevista_EmpleoModificar]
	 @idPersona INT 
	,@formaEntero VARCHAR (1) 
	,@personaInvito VARCHAR (1) 
	,@motivoTrabajarInstitucion VARCHAR (1) 
	,@familiaresLaborandoInstitucion VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)
	,@idEntrevista BIGINT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_Entrevista_EmpleoModificarDatos]
		 @idPersona
		,@formaEntero
		,@personaInvito
		,@motivoTrabajarInstitucion
		,@familiaresLaborandoInstitucion
		,@idEntrevista  
		,@noError OUTPUT
		,@mensaje OUTPUT
END