USE [siiaRecursosHumanosCandidatos]
GO

DECLARE @RC int
DECLARE @idTipoDocumento smallint
DECLARE @archivo varchar(120)
DECLARE @descripcion varchar(250)
DECLARE @archivoServidor varchar(40)
DECLARE @archivoServidorRuta varchar(30)
DECLARE @fechaRegistro datetime
DECLARE @usuarioRealizo varchar(60)
DECLARE @dispositivo varchar(150)
DECLARE @direccionIP varchar(40)
DECLARE @app varchar(50)
DECLARE @idDocumento bigint
DECLARE @noError int
DECLARE @mensaje varchar(255)

-- TODO: Set parameter values here.
SELECT 
	@idTipoDocumento = '11'
   ,@archivo = 'diploma.pdf'
   ,@descripcion = 'diplomaRFC'
   ,@archivoServidor = 'TheDSksay2Ygbljg.pdf'
   ,@archivoServidorRuta = '11fsdkjfsYGUYgbljg'
   ,@fechaRegistro = '2021-12-06'
   ,@usuarioRealizo = 'test'
   ,@dispositivo = 'test'
   ,@direccionIP = 'test'
   ,@app = 'testing'
   --,@idDocumento OUTPUT = ''
EXECUTE @RC = [app].[rhcDocumentoAgregarModificar] 
   @idTipoDocumento
  ,@archivo
  ,@descripcion
  ,@archivoServidor
  ,@archivoServidorRuta
  ,@fechaRegistro
  ,@usuarioRealizo
  ,@dispositivo
  ,@direccionIP
  ,@app
  ,@idDocumento OUTPUT
  ,@noError OUTPUT
  ,@mensaje OUTPUT

SELECT
   @idDocumento as idDocumento
  ,@noError as noError
  ,@mensaje as mensaje
GO


