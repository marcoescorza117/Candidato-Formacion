
CREATE VIEW [dbo].[vtaC_rhcCurriculum_FormacionDocumento](
	 [idPersona]
	,[idCurriculum]
	,[idCurriculumFormacion]
	,[idDocumento]
	,[idTipoDocumento]
	,[tipoDocumento]
	,[archivo]
	,[descripcion]
	,[archivoServidor]
	,[archivoServidorRuta]
	,[fechaRegistro]
)
AS
SELECT

	 [idPersona]
	,[idCurriculum]
	,[idCurriculumFormacion]
	,[idDocumento]
	,[idTipoDocumento]
	,[tipoDocumento]
	,[archivo]
	,[descripcion]
	,[archivoServidor]
	,[archivoServidorRuta]
	,[fechaRegistro]
	
FROM dbo.[vtaI_rhcCurriculum_FormacionDocumento]