CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DuracionModificar]
	 @fecha DATETIME 
	,@duracion VARBINARY (25) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DuracionModificarDatos]
		 @fecha
		,@duracion
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
END