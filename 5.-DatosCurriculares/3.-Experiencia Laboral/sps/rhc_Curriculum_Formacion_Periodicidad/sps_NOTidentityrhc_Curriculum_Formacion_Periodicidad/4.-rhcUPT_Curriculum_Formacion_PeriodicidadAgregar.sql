CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadAgregar]
	 @idCurriculumFormacion INT 
	,@fechaInicio DATETIME 
	,@fechaTermino DATETIME 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadAgregarDatos]
		 @idCurriculumFormacion
		,@fechaInicio
		,@fechaTermino
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

