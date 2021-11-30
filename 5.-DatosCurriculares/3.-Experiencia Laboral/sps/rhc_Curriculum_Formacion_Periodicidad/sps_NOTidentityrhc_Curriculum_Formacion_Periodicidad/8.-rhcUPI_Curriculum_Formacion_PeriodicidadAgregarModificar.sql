CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_PeriodicidadAgregarModificar]
	 @idCurriculumFormacion INT 
	,@fechaInicio DATETIME 
	,@fechaTermino DATETIME 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadAgregarModificar]
		 @idCurriculumFormacion
		,@fechaInicio
		,@fechaTermino
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END