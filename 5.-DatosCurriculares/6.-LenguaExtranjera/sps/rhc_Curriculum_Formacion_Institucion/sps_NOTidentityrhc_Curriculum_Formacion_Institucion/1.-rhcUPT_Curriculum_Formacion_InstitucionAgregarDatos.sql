CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionAgregarDatos]
	 @idCurriculumFormacion INT
	,@idInstitucion INT 
	,@institucion VARCHAR (250) 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Institucion] ON 
 	INSERT INTO rhc_Curriculum_Formacion_Institucion 
	(
		 idInstitucion
		,institucion
		,idCurriculumFormacion
	)
	VALUES	(
		 @idInstitucion
		,@institucion
		,@idCurriculumFormacion
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_Institucion] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

