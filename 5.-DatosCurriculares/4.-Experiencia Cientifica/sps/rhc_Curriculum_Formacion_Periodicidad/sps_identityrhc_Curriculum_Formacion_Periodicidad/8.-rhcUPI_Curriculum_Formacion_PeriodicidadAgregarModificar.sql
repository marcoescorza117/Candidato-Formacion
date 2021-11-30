CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_PeriodicidadAgregarModificar]
	 @fechaInicio DATETIME 
	,@fechaTermino DATETIME 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadAgregarModificar]
		 @fechaInicio
		,@fechaTermino
		,@usuarioRealizo
		,@idCurriculumFormacion OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT
END