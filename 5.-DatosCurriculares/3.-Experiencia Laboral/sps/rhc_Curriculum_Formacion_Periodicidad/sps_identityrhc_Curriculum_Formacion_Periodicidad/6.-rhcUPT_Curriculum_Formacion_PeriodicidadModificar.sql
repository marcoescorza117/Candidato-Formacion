CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadModificar]
	 @fechaInicio DATETIME 
	,@fechaTermino DATETIME 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadModificarDatos]
		 @fechaInicio
		,@fechaTermino
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
END