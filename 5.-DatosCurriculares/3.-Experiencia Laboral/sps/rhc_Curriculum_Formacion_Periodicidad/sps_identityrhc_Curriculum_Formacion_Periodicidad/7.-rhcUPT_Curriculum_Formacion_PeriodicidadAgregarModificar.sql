CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadAgregarModificar]
	 @fechaInicio DATETIME 
	,@fechaTermino DATETIME 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idCurriculumFormacion, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadAgregar]
		 @fechaInicio
		,@fechaTermino
		,@usuarioRealizo
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadModificar]
		 @fechaInicio
		,@fechaTermino
		,@usuarioRealizo
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END