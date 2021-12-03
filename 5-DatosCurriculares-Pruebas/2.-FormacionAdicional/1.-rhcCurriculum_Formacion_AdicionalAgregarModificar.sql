USE [siiaRecursosHumanosCandidatos]
GO

DECLARE @RC int
DECLARE @idPersona int
DECLARE @idTipoFormacionAdicional smallint
DECLARE @idProgramaEducativo int
DECLARE @estudio varchar(150)
DECLARE @fecha datetime
DECLARE @duracion varbinary(25)
DECLARE @idInstitucion int
DECLARE @institucion varchar(250)
DECLARE @usuarioRealizo varchar(60)
DECLARE @dispositivo varchar(150)
DECLARE @direccionIP varchar(40)
DECLARE @app varchar(50)
DECLARE @idCurriculumFormacion int
DECLARE @noError int
DECLARE @mensaje varchar(255)

-- TODO: Set parameter values here.
SELECT 

   @idPersona =''
  ,@idTipoFormacionAdicional =''
  ,@idProgramaEducativo =''
  ,@estudio = ''
  ,@fecha = ''
  ,@duracion = CAST('admin' AS VARBINARY(MAX))
  ,@idInstitucion = ''
  ,@institucion = ''
  ,@usuarioRealizo = ''
  ,@dispositivo = ''
  ,@direccionIP = ''
  ,@app = ''
  --,@idCurriculumFormacion OUTPUT = '' -- edicion

EXECUTE @RC = [app].[rhcCurriculum_Formacion_AdicionalAgregarModificar] 
   @idPersona
  ,@idTipoFormacionAdicional
  ,@idProgramaEducativo
  ,@estudio
  ,@fecha
  ,@duracion
  ,@idInstitucion
  ,@institucion
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


