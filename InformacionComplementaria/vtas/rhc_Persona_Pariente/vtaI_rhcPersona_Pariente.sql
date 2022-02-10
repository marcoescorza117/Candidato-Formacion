CREATE VIEW [dbo].[vtaI_rhcPersona_Pariente](
	 [idPersonaPariente]
	,[idPersona]
	,[idTipoParentesco]
	,[paterno]
	,[materno]
	,[nombres]
    ,[adscripcion]
)
AS
SELECT
	 pp.[idPersonaPariente]
	,pp.[idPersona]
	,pp.[idTipoParentesco]
	,pp.[paterno]
	,pp.[materno]
	,pp.[nombres]
    ,ppa.[adscripcion]
FROM [dbo].[vtaT_rhcPersona_Pariente] as pp
INNER JOIN dbo.vtaI_rhcPersona_Pariente_Adscripcion as ppa ON pp.idPersonaPariente =  ppa.idPersonaPariente
go

