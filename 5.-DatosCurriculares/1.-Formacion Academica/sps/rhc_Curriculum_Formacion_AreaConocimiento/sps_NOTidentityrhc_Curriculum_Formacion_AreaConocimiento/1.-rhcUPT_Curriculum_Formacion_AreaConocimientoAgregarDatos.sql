CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_AreaConocimientoAgregarDatos]
	 @idCurriculumFormacion INT
	,@idAreaConocimiento INT 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_AreaConocimiento] ON 
 	INSERT INTO rhc_Curriculum_Formacion_AreaConocimiento 
	(
		 idAreaConocimiento
		,idCurriculumFormacion
	)
	VALUES	(
		 @idAreaConocimiento
		,@idCurriculumFormacion
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_AreaConocimiento] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

