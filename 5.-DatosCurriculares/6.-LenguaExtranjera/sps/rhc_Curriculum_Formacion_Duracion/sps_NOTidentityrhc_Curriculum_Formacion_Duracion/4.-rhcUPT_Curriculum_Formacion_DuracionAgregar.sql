CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DuracionAgregar]
	 @idCurriculumFormacion INT 
	,@fecha DATETIME 
	,@duracion VARBINARY (25) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DuracionAgregarDatos]
		 @idCurriculumFormacion
		,@fecha
		,@duracion
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

