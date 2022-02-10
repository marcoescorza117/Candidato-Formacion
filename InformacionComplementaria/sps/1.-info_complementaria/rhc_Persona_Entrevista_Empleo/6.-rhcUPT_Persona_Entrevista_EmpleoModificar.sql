CREATE PROCEDURE [dbo].[rhcUPT_Persona_Entrevista_EmpleoModificar]
	 @idPersona INT 
	,@formaEntero VARCHAR (MAX)
	,@personaInvito VARCHAR (MAX)
	,@motivoTrabajarInstitucion VARCHAR (MAX)
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