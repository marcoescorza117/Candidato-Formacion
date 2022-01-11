CREATE PROCEDURE [dbo].[rhcUPT_Persona_Entrevista_EmpleoModificarDatos]
	 @idPersona INT 
	,@formaEntero VARCHAR (1) 
	,@personaInvito VARCHAR (1) 
	,@motivoTrabajarInstitucion VARCHAR (1) 
	,@familiaresLaborandoInstitucion VARCHAR (1) 

	,@idEntrevista BIGINT OUTPUT
	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Persona_Entrevista_Empleo SET 
		 idPersona = @idPersona
		,formaEntero = @formaEntero
		,personaInvito = @personaInvito
		,motivoTrabajarInstitucion = @motivoTrabajarInstitucion
		,familiaresLaborandoInstitucion = @familiaresLaborandoInstitucion
 

		WHERE idEntrevista = @idEntrevista 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END