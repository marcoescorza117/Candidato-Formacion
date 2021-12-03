USE [siiaRecursosHumanosCandidatos]
GO

DECLARE @RC int
DECLARE @idPersona int
DECLARE @idTipoTICS smallint
DECLARE @herramientas varchar(1)
DECLARE @usuarioRealizo varchar(60)
DECLARE @dispositivo varchar(150)
DECLARE @direccionIP varchar(40)
DECLARE @app varchar(50)
DECLARE @idCurriculumFormacion int
DECLARE @noError int
DECLARE @mensaje varchar(255)

-- TODO: Set parameter values here.
SELECT 
   @idPersona = '1020'
  ,@idTipoTICS = '3'
  ,@herramientas = 'T'
  ,@usuarioRealizo = 'testing'
  ,@dispositivo = 'testing'
  ,@direccionIP = 'testing'
  ,@app = 'testing'
  --,@idCurriculumFormacion ='49'

EXECUTE @RC = [app].[rhcCurriculum_Uso_TICSAgregarModificar] 
   @idPersona
  ,@idTipoTICS
  ,@herramientas
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


