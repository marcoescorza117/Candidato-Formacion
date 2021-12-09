
CREATE VIEW [dbo].[vtaI_rhcCurriculum_FormacionDocumento](
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

	 rcc.[idPersona]
	,rcc.[idCurriculum]
	,cfd.[idCurriculumFormacion]
	,rhd.[idDocumento]
	,rhd.[idTipoDocumento]
	,rhd.[tipoDocumento]
	,rhd.[archivo]
	,rhd.[descripcion]
	,rhd.[archivoServidor]
	,rhd.[archivoServidorRuta]
	,rhd.[fechaRegistro]

FROM dbo.vtaI_rhcCurriculum_Formacion as rfc
INNER JOIN dbo.vtaI_rhcCurriculum_Formacion_Documento as cfd ON rfc.idCurriculumFormacion = cfd.idCurriculumFormacion 
INNER JOIN dbo.vtaI_rhcDocumento as rhd ON  cfd.idDocumento = rhd.idDocumento
INNER JOIN dbo.vtaI_rhcCurriculum as rcc ON rfc.idCurriculumFormacion = rcc.idCurriculumFormacion


GO