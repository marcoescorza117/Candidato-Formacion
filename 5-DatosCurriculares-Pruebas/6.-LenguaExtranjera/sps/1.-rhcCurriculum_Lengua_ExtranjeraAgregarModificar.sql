USE [siiaRecursosHumanosCandidatos]
GO

DECLARE @RC int
DECLARE @idPersona int
DECLARE @idIdioma smallint
DECLARE @idIdiomaTipoCertificacion smallint
DECLARE @nivel varchar(25)
DECLARE @idInstitucion int
DECLARE @institucion varchar(250)
DECLARE @fecha datetime
DECLARE @duracion varbinary(25)
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
  ,@idIdioma = '1' 
  ,@idIdiomaTipoCertificacion = '1' 
  ,@nivel = 'B2' 
  ,@idInstitucion = '0' 
  ,@institucion = 'TOEFL' 
  ,@fecha = '2021-06-07' 
  ,@duracion = CAST('3 horas' AS VARBINARY(MAX))
  ,@usuarioRealizo = 'test' 
  ,@dispositivo = 'test' 
  ,@direccionIP = 'test' 
  ,@app = 'test' 
  --,@idCurriculumFormacion OUTPUT = '' -- EDICION


EXECUTE @RC = [app].[rhcCurriculum_Lengua_ExtranjeraAgregarModificar] 
   @idPersona
  ,@idIdioma
  ,@idIdiomaTipoCertificacion
  ,@nivel
  ,@idInstitucion
  ,@institucion
  ,@fecha
  ,@duracion
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


