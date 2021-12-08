
USE [siiaRecursosHumanosCandidatos]
GO

DECLARE @RC int
DECLARE @idCurriculumFormacion int
DECLARE @idAreaConocimiento int
DECLARE @usuarioRealizo varchar(60)
DECLARE @dispositivo varchar(150)
DECLARE @direccionIP varchar(40)
DECLARE @app varchar(50)
DECLARE @noError int
DECLARE @mensaje varchar(255)

-- TODO: Set parameter values here.

SELECT 
   
   @idCurriculumFormacion = ''
  ,@idAreaConocimiento = ''
  ,@usuarioRealizo = ''
  ,@dispositivo = ''
  ,@direccionIP = ''
  ,@app = ''

EXECUTE @RC = [app].[rhcCurriculum_Formacion_AreaConocimientoAgregarModificar] 
   @idCurriculumFormacion
  ,@idAreaConocimiento
  ,@usuarioRealizo
  ,@dispositivo
  ,@direccionIP
  ,@app
  ,@noError OUTPUT
  ,@mensaje OUTPUT

SELECT 
   @idCurriculumFormacion as idCurriculumFormacion
  ,@noError as noError
  ,@mensaje as mensaje



GO