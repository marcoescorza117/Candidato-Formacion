CREATE VIEW [dbo].[vtaC_rhcCurriculum_Formacion_Documento](
	 [idCurriculumFormacionDocumento]
	,[idCurriculumFormacion]
	,[idDocumento]
)
AS
SELECT
	 [idCurriculumFormacionDocumento]
	,[idCurriculumFormacion]
	,[idDocumento]
 FROM [dbo].[vtaI_rhcCurriculum_Formacion_Documento]
GO
