CREATE PROCEDURE dbo.[rhcUPI_Persona_Entrevista_EmpleoAgregarModificarValidar]

     @formaEntero VARCHAR(MAX)
	,@personaInvito VARCHAR(MAX)
	,@motivoTrabajarInstitucion VARCHAR(MAX)
	,@familiaresLaborandoInstitucion VARCHAR(1)
         
    ,@noError INT OUTPUT
	,@mensaje VARCHAR(255) OUTPUT
AS 


BEGIN

    IF @formaEntero = ''
    BEGIN
        SET @noError = 1
        SET @mensaje = 'El campo no puede quedar vacio, favor de verificar'
        RETURN
    END

    IF @personaInvito = ''
    BEGIN
        SET @noError = 1
        SET @mensaje = 'El campo no puede quedar vacio, favor de verificar'
        RETURN
    END

    IF @motivoTrabajarInstitucion = ''
    BEGIN
        SET @noError = 1
        SET @mensaje = 'El campo no puede quedar vacio, favor de verificar'
        RETURN
    END


    IF @familiaresLaborandoInstitucion = '' 
    BEGIN
        SET @noError = 1
        SET @mensaje = 'El campo no puede quedar vacio, favor de verificar'
        RETURN
    END


END
go

