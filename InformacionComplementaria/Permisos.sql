--Conceder permisos al usuario rhc_Candidatos

--The objects below are the views 
--grant select on dbo.[ObjectName] to rh_Candidatos
grant select on dbo.vtaC_rhcPersona_Entrevista_Empleo to rh_Candidatos; --Persona entrevista
grant select on dbo.vtaC_rhcPersona_Pariente to rh_Candidatos; --Persona pariente
grant select on dbo.vtaC_rhcTipoParentesco to rh_Candidatos; --Persona parentesco
grant select on dbo.vtaC_rhcPersona_LenguaIndigena to rh_Candidatos; --Persona lengua indigena
grant select on dbo.vtaC_rhcLenguaIndigena to rh_Candidatos;--catalogo lengua indigena vtaC_rhcLenguaIndigena
grant select on dbo.vtaC_rhcTipoDiscapacidad to rh_Candidatos;--catalogo vtaC_rhcTipoDiscapacidad_Jerarquia
grant select on dbo.vtaC_rhcTipoDiscapacidad_Jerarquia to rh_Candidatos;--catalogovtaC_rhcTipoDiscapacidad_Jerarquia
grant select on dbo.vtaC_rhcPersona_TipoDiscapacidad to rh_Candidatos;--Persona discapacidad


grant select on dbo.vtaC_rhcPersona_Documento to rh_Candidatos;--Persona documento vtaC_rhcPersona_Documento

--the objects below are the stored procedures
--grant execute on app.[ObjectName] to rh_Candidatos
grant execute on app.rhcPersona_Entrevista_EmpleoAgregarModificar to rh_Candidatos; ----Persona entrevista
grant execute on app.rhcPersona_ParienteAgregarModificar to rh_Candidatos; ----Persona pariente
grant EXECUTE ON app.rhcPersona_LenguaIndigenaAgregarModificar to rh_Candidatos; ----Persona lengua indigena
grant EXECUTE ON app.rhcPersona_TipoDiscapacidadAgregarModificar to rh_Candidatos; ----Persona discapacidad

grant EXECUTE ON app.rhcPersona_DocumentoAgregarModificar to rh_Candidatos; ----Persona documento
