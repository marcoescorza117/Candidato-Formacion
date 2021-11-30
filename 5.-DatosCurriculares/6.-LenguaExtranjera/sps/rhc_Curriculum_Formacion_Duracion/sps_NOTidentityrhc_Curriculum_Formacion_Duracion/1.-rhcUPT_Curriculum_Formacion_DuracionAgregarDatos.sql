CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DuracionAgregarDatos]
	 @idCurriculumFormacion INT
	,@fecha DATETIME 
	,@duracion VARBINARY (25) 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Duracion] ON 
 	INSERT INTO rhc_Curriculum_Formacion_Duracion 
	(
		 fecha
		,duracion
		,idCurriculumFormacion
	)
	VALUES	(
		 @fecha
		,@duracion
		,@idCurriculumFormacion
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Duracion] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

