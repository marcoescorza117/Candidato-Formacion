CREATE PROCEDURE [dbo].[rhcUPT_Persona_Entrevista_EmpleoAgregar]
	 @idPersona INT 
	,@formaEntero VARCHAR (1) 
	,@personaInvito VARCHAR (1) 
	,@motivoTrabajarInstitucion VARCHAR (1) 
	,@familiaresLaborandoInstitucion VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)
	,@idEntrevista BIGINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Persona_Entrevista_EmpleoAgregarDatos]
		 @idPersona
		,@formaEntero
		,@personaInvito
		,@motivoTrabajarInstitucion
		,@familiaresLaborandoInstitucion
		,@idEntrevista OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END