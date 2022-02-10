CREATE PROCEDURE [dbo].[rhcUPI_Persona_Entrevista_EmpleoAgregarModificar]
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
	 EXECUTE [dbo].[rhcUPT_Persona_Entrevista_EmpleoAgregarModificar]
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