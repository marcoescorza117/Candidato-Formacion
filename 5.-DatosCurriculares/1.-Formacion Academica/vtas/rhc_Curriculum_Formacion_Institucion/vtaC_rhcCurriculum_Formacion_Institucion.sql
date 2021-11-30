CREATE VIEW [dbo].[vtaC_rhcCurriculum_Formacion_Institucion](
	 [idCurriculumFormacion]
	,[idInstitucion]
	,[institucion]
)
AS
SELECT
	 [idCurriculumFormacion]
	,[idInstitucion]
	,[institucion]
 FROM [dbo].[vtaI_rhcCurriculum_Formacion_Institucion]
GO
