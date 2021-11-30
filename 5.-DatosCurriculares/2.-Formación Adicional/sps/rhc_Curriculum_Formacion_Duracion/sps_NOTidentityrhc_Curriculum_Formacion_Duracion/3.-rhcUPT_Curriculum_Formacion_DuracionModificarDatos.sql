CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DuracionModificarDatos]
	 @idCurriculumFormacion INT 
	,@fecha DATETIME 
	,@duracion VARBINARY (25) 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Curriculum_Formacion_Duracion SET 
		 fecha = @fecha
		,duracion = @duracion

	WHERE idCurriculumFormacion = @idCurriculumFormacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

