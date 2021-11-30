CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PaisModificarDatos]
	 @idCurriculumFormacion INT 
	,@idPais INT 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Curriculum_Formacion_Pais SET 
		 idPais = @idPais

	WHERE idCurriculumFormacion = @idCurriculumFormacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

