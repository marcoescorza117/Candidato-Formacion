CREATE PROCEDURE [dbo].[rhcUPT_Persona_Entrevista_EmpleoModificarDatos]
	 @idPersona INT 
	,@formaEntero VARCHAR (MAX)
	,@personaInvito VARCHAR (MAX)
	,@motivoTrabajarInstitucion VARCHAR (MAX)
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