CREATE PROCEDURE [dbo].[rhcUPT_Persona_Entrevista_EmpleoAgregarDatos]
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
	INSERT INTO rhc_Persona_Entrevista_Empleo 
	(
		  idPersona
		 ,formaEntero
		 ,personaInvito
		 ,motivoTrabajarInstitucion
		 ,familiaresLaborandoInstitucion
	)
	VALUES
	(
		  @idPersona
		 ,@formaEntero
		 ,@personaInvito
		 ,@motivoTrabajarInstitucion
		 ,@familiaresLaborandoInstitucion
	)
	SET @idEntrevista = @@IDENTITY 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END