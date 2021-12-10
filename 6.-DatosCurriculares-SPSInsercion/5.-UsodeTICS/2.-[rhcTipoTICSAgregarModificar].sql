USE [siiaRecursosHumanosCandidatos]
GO

DECLARE @RC int
DECLARE @tipoTICS varchar(120)
DECLARE @orden smallint
DECLARE @usuarioRealizo varchar(60)
DECLARE @dispositivo varchar(150)
DECLARE @direccionIP varchar(40)
DECLARE @app varchar(50)
DECLARE @idTipoTICS smallint
DECLARE @noError int
DECLARE @mensaje varchar(255)

-- TODO: Set parameter values here.
SELECT 
   @tipoTICS = ''
  ,@orden = ''
  ,@usuarioRealizo = ''
  ,@dispositivo = ''
  ,@direccionIP = ''
  ,@app = ''
  --,@idTipoTICS OUTPUT
EXECUTE @RC = [app].[rhcTipoTICSAgregarModificar] 
   @tipoTICS
  ,@orden
  ,@usuarioRealizo
  ,@dispositivo
  ,@direccionIP
  ,@app
  ,@idTipoTICS OUTPUT
  ,@noError OUTPUT
  ,@mensaje OUTPUT

SELECT 
   @idTipoTICS as idTipoTICS
  ,@noError as noError
  ,@mensaje as mensaje

GO


