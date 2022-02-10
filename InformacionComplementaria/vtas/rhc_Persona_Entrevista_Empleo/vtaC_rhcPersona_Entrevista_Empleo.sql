CREATE VIEW [dbo].[vtaC_rhcPersona_Entrevista_Empleo](
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
 FROM [dbo].[vtaI_rhcPersona_Entrevista_Empleo]
GO


