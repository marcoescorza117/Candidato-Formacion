CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_DuracionAgregarModificar]
	 @idCurriculumFormacion INT 
	,@fecha DATETIME 
	,@duracion VARBINARY (25) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DuracionAgregarModificar]
		 @idCurriculumFormacion
		,@fecha
		,@duracion
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END