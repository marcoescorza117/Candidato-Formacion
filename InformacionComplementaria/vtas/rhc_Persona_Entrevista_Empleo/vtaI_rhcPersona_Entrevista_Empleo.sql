 CREATE VIEW [dbo].[vtaI_rhcPersona_Entrevista_Empleo](
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
FROM [dbo].[vtaT_rhcPersona_Entrevista_Empleo]
GO 