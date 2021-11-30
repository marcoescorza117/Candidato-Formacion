
CREATE VIEW	[dbo].[vtaI_rhcCurriculum_Formacion_Documento](
	 [idCurriculumFormacionDocumento]
	,[idCurriculumFormacion]
	,[idDocumento]
)
AS
SELECT
	 [idCurriculumFormacionDocumento]
	,[idCurriculumFormacion]
	,[idDocumento]
FROM [dbo].[vtaT_rhcCurriculum_Formacion_Documento]
GO 
