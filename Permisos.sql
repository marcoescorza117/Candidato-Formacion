--Conceder permisos al usuario rhc_Candidatos

use siiaRecursosHumanosCandidatos

--The objects below are the views 
--grant select on dbo.[ObjectName] to rh_Candidatos

grant select on dbo.vtaC_rhcAreaConocimiento to rh_Candidatos;
grant select on dbo.vtaC_rhcDocumento to rh_Candidatos;
grant select on dbo.vtaC_rhcIdioma to rh_Candidatos;
grant select on dbo.vtaC_rhcIdioma_TipoCertificacion to rh_Candidatos;
grant select on dbo.vtaC_rhcInstitucion to rh_Candidatos;
grant select on dbo.vtaC_rhcNivelEducativo to rh_Candidatos;
grant select on dbo.vtaC_rhcPerfilCientificoDocente to rh_Candidatos;
grant select on dbo.vtaC_rhcProgramaEducativo to rh_Candidatos;
grant select on dbo.vtaC_rhcTipoFormacionAdicional to rh_Candidatos;
grant select on dbo.vtaC_rhcTipoPerfilCientificoDocente to rh_Candidatos;
grant select on dbo.vtaC_rhcTipoTICS to rh_Candidatos;
grant select on dbo.vtaC_rhTipoDocumento to rh_Candidatos;

grant select on dbo.vtaC_rhcCurriculum_Formacion_Academica to rh_Candidatos;
grant select on dbo.vtaC_rhcCurriculum_Formacion_Adicional to rh_Candidatos;
grant select on dbo.vtaC_rhcCurriculum_Experiencia_Laboral to rh_Candidatos;
grant select on dbo.vtaC_rhcCurriculum_Experiencia_Cientifica to rh_Candidatos;
grant select on dbo.vtaC_rhcCurriculum_Uso_TICS to rh_Candidatos;
grant select on dbo.vtaC_rhcCurriculum_Lengua_Extranjera to rh_Candidatos;
grant select on dbo.vtaC_rhcCurriculum_FormacionDocumento to rh_Candidatos;


--the objects below are the stored procedures
--grant execute on app.[ObjectName] to rh_Candidatos
grant execute on app.rhcCurriculum_Formacion_AcademicaAgregarModificar to rh_Candidatos;
grant execute on app.rhcCurriculum_Formacion_AreaConocimientoAgregarModificar to rh_Candidatos;
grant execute on app.rhcDocumentoAgregarModificar to rh_Candidatos;
grant execute on app.rhcCurriculum_Formacion_DocumentoAgregarModificar to rh_Candidatos;
grant execute on app.rhcCurriculum_Formacion_AdicionalAgregarModificar to rh_Candidatos;
grant execute on app.rhcDocumentoAgregarModificar to rh_Candidatos;
grant execute on app.rhcCurriculum_Formacion_DocumentoAgregarModificar to rh_Candidatos;
grant execute on app.rhcCurriculum_Experiencia_LaboralAgregarModificar to rh_Candidatos;
grant execute on app.rhcCurriculum_Experiencia_CientificaAgregarModificar to rh_Candidatos;
grant execute on app.rhcDocumentoAgregarModificar to rh_Candidatos;
grant execute on app.rhcCurriculum_Formacion_DocumentoAgregarModificar to rh_Candidatos;
grant execute on app.rhcCurriculum_Uso_TICSAgregarModificar to rh_Candidatos;
grant execute on app.rhcCurriculum_Lengua_ExtranjeraAgregarModificar to rh_Candidatos;
grant execute on app.rhcDocumentoAgregarModificar to rh_Candidatos;
grant execute on app.rhcCurriculum_Formacion_DocumentoAgregarModificar to rh_Candidatos;
