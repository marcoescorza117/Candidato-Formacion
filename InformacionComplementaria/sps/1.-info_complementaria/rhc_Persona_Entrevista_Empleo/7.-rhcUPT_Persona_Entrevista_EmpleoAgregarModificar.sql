CREATE PROCEDURE [dbo].[rhcUPT_Persona_Entrevista_EmpleoAgregarModificar]
	 @idPersona INT 
	,@formaEntero VARCHAR (MAX)
	,@personaInvito VARCHAR (MAX)
	,@motivoTrabajarInstitucion VARCHAR (MAX)
	,@familiaresLaborandoInstitucion VARCHAR (1)
	,@usuarioRealizo VARCHAR (60)
	,@idEntrevista BIGINT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idEntrevista, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Persona_Entrevista_EmpleoAgregar]
		 @idPersona
		,@formaEntero
		,@personaInvito
		,@motivoTrabajarInstitucion
		,@familiaresLaborandoInstitucion
		,@usuarioRealizo
		,@idEntrevista OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Persona_Entrevista_EmpleoModificar]
		 @idPersona
		,@formaEntero
		,@personaInvito
		,@motivoTrabajarInstitucion
		,@familiaresLaborandoInstitucion
		,@usuarioRealizo
		,@idEntrevista  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END