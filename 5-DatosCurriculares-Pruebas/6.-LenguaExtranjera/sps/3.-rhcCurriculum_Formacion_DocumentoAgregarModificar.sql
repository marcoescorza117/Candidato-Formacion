USE [siiaRecursosHumanosCandidatos]
GO

DECLARE @RC int
DECLARE @idCurriculumFormacion int
DECLARE @idDocumento bigint
DECLARE @usuarioRealizo varchar(60)
DECLARE @dispositivo varchar(150)
DECLARE @direccionIP varchar(40)
DECLARE @app varchar(50)
DECLARE @idCurriculumFormacionDocumento bigint
DECLARE @noError int
DECLARE @mensaje varchar(255)

-- TODO: Set parameter values here.
SELECT 
   @idCurriculumFormacion = '72'
  ,@idDocumento = '50'
  ,@usuarioRealizo = 'test'
  ,@dispositivo = 'testing'
  ,@direccionIP = 'testing'
  ,@app = 'testing'
  --,@idCurriculumFormacionDocumento OUTPUT = '' --Edicion

EXECUTE @RC = [app].[rhcCurriculum_Formacion_DocumentoAgregarModificar] 
   @idCurriculumFormacion
  ,@idDocumento
  ,@usuarioRealizo
  ,@dispositivo
  ,@direccionIP
  ,@app
  ,@idCurriculumFormacionDocumento OUTPUT
  ,@noError OUTPUT
  ,@mensaje OUTPUT

SELECT 
   @idCurriculumFormacionDocumento as idCurriculumFormacionDocumento
  ,@noError as noError
  ,@mensaje as mensaje
GO


