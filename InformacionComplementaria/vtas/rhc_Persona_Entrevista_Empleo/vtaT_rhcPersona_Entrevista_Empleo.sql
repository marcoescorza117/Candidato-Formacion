CREATE VIEW	[dbo].[vtaT_rhcPersona_Entrevista_Empleo](
	 [idEntrevista]
	,[idPersona]
	,[formaEntero]
	,[personaInvito]
	,[motivoTrabajarInstitucion]
	,[familiaresLaborandoInstitucion]
)
AS
SELECT
	 [idEntrevista]
	,[idPersona]
	,[formaEntero]
	,[personaInvito]
	,[motivoTrabajarInstitucion]
	,[familiaresLaborandoInstitucion]
FROM [dbo].[rhc_Persona_Entrevista_Empleo]
GO
