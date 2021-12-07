USE [siiaRecursosHumanosCandidatos]
GO

DECLARE @RC int
DECLARE @idPersona int
DECLARE @idNivelEducativo tinyint
DECLARE @idPais int
DECLARE @idInstitucion int
DECLARE @institucion varchar(250)
DECLARE @idProgramaEducativo int
DECLARE @estudio varchar(150)
DECLARE @usuarioRealizo varchar(60)
DECLARE @dispositivo varchar(150)
DECLARE @direccionIP varchar(40)
DECLARE @app varchar(50)
DECLARE @idCurriculumFormacion int
DECLARE @noError int
DECLARE @mensaje varchar(255)

-- TODO: Set parameter values here.

SELECT
   @idPersona ='1193'
  ,@idNivelEducativo='9'
  ,@idPais='1'
  ,@idInstitucion='1380'
  ,@institucion='Universidad Michoacana de San Nicolás de Hidalgo'
  ,@idProgramaEducativo='139'
  ,@estudio='MAESTRIA EN CIENCIA E INGENIERIA DE MATERIALES.'
  ,@usuarioRealizo='test'
  ,@dispositivo='test'
  ,@direccionIP='test'
  ,@app='test'
  --,@idCurriculumFormacion OUTPUT =''

EXECUTE @RC = [app].[rhcCurriculum_Formacion_AcademicaAgregarModificar] 
   @idPersona
  ,@idNivelEducativo
  ,@idPais
  ,@idInstitucion
  ,@institucion
  ,@idProgramaEducativo
  ,@estudio
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


