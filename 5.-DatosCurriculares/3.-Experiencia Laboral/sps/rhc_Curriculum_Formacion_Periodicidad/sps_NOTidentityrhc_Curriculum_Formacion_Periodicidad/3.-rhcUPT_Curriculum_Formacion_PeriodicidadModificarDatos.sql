CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadModificarDatos]
	 @idCurriculumFormacion INT 
	,@fechaInicio DATETIME 
	,@fechaTermino DATETIME 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Curriculum_Formacion_Periodicidad SET 
		 fechaInicio = @fechaInicio
		,fechaTermino = @fechaTermino

	WHERE idCurriculumFormacion = @idCurriculumFormacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

