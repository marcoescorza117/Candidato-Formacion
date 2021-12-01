USE [siiaRecursosHumanosCandidatos]
GO

DECLARE @RC int
DECLARE @idPersona int
DECLARE @idPerfilCientificoDocente smallint
DECLARE @idTipoPerfilCientificoDocente smallint
DECLARE @fechaInicio datetime
DECLARE @fechaTermino datetime
DECLARE @usuarioRealizo varchar(60)
DECLARE @dispositivo varchar(150)
DECLARE @direccionIP varchar(40)
DECLARE @app varchar(50)
DECLARE @idCurriculumFormacion int
DECLARE @noError int
DECLARE @mensaje varchar(255)

-- TODO: Set parameter values here.
SELECT 
   @idPersona = ''
  ,@idPerfilCientificoDocente = ''
  ,@idTipoPerfilCientificoDocente = ''
  ,@fechaInicio = ''
  ,@fechaTermino = ''
  ,@usuarioRealizo = ''
  ,@dispositivo = ''
  ,@direccionIP = ''
  ,@app = ''
  --,@idCurriculumFormacion OUTPUT = '' --edicion


EXECUTE @RC = [app].[rhcCurriculum_Experiencia_CientificaAgregarModificar] 
   @idPersona
  ,@idPerfilCientificoDocente
  ,@idTipoPerfilCientificoDocente
  ,@fechaInicio
  ,@fechaTermino
  ,@usuarioRealizo
  ,@dispositivo
  ,@direccionIP
  ,@app
  ,@idCurriculumFormacion OUTPUT
  ,@noError OUTPUT
  ,@mensaje OUTPUT


SELECT 
   @idCurriculumFormacion as idCurriculumFormacion
  ,@noError as noError
  ,@mensaje as mensaje
GO


