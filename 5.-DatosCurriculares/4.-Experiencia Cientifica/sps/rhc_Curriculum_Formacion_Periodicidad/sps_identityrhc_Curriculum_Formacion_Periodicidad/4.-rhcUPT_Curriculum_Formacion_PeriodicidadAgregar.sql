CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadAgregar]
	 @fechaInicio DATETIME 
	,@fechaTermino DATETIME 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadAgregarDatos]
		 @fechaInicio
		,@fechaTermino
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
END