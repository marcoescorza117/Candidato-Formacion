CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TICSModificarDatos]
	 @idCurriculumFormacion INT 
	,@idTipoTICS SMALLINT 
	,@herramientas VARCHAR (1) 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	UPDATE rhc_Curriculum_Formacion_TICS SET 
		 idTipoTICS = @idTipoTICS
		,herramientas = @herramientas

	WHERE idCurriculumFormacion = @idCurriculumFormacion 
	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

