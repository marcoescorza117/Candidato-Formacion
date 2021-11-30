CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TICSAgregarDatos]
	 @idCurriculumFormacion INT
	,@idTipoTICS SMALLINT 
	,@herramientas VARCHAR (1) 

	,@noError int OUTPUT 
	,@mensaje varchar(255) OUTPUT
AS 
BEGIN 
	BEGIN TRY
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_TICS] ON 
 	INSERT INTO rhc_Curriculum_Formacion_TICS 
	(
		 idTipoTICS
		,herramientas
		,idCurriculumFormacion
	)
	VALUES	(
		 @idTipoTICS
		,@herramientas
		,@idCurriculumFormacion
	)
	SET IDENTITY_INSERT [rhc_Curriculum_Formacion_TICS] OFF 
 	END TRY 
	BEGIN CATCH 
		 SET @noError=ERROR_NUMBER()
		 SET @mensaje=ERROR_MESSAGE()
	END CATCH
END

GO

