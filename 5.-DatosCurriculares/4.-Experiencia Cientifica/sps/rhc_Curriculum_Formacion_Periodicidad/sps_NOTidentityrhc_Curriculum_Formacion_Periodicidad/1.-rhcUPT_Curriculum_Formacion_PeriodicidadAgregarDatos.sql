CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_PeriodicidadAgregarDatos]
	 @idCurriculumFormacion INT
	,@fechaInicio DATETIME 
	,@fechaTermino DATETIME 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Periodicidad] ON 
 	INSERT INTO rhc_Curriculum_Formacion_Periodicidad 
	(
		 fechaInicio
		,fechaTermino
		,idCurriculumFormacion
	)
	VALUES	(
		 @fechaInicio
		,@fechaTermino
		,@idCurriculumFormacion
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Periodicidad] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

