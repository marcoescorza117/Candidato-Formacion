CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_ExperenciaLaboralAgregarDatos]
	 @idCurriculumFormacion INT
	,@puesto VARCHAR (150) 
	,@actividades VARCHAR (1) 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_ExperenciaLaboral] ON 
 	INSERT INTO rhc_Curriculum_Formacion_ExperenciaLaboral 
	(
		 puesto
		,actividades
		,idCurriculumFormacion
	)
	VALUES	(
		 @puesto
		,@actividades
		,@idCurriculumFormacion
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_ExperenciaLaboral] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

