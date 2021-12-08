USE [siiaRecursosHumanosCandidatos]
GO

DECLARE @RC int
DECLARE @idPersona int
DECLARE @idPais int
DECLARE @idInstitucion int
DECLARE @institucion varchar(250)
DECLARE @fechaInicio datetime
DECLARE @fechaTermino datetime
DECLARE @puesto varchar(150)
DECLARE @actividades varchar(max)
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
  ,@idPais = ''
  ,@idInstitucion = ''
  ,@institucion = ''
  ,@fechaInicio = ''
  ,@fechaTermino = ''
  ,@puesto = ''
  ,@actividades = ''
  ,@usuarioRealizo = ''
  ,@dispositivo = ''
  ,@direccionIP = ''
  ,@app = ''
  --,@idCurriculumFormacion OUTPUT


EXECUTE @RC = [app].[rhcCurriculum_Experiencia_LaboralAgregarModificar] 
   @idPersona
  ,@idPais
  ,@idInstitucion
  ,@institucion
  ,@fechaInicio
  ,@fechaTermino
  ,@puesto
  ,@actividades
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



