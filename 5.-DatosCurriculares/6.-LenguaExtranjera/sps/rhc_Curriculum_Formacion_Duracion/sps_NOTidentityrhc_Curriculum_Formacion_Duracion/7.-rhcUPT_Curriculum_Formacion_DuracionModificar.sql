CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_DuracionAgregarModificar]
	 @idCurriculumFormacion INT 
	,@fecha DATETIME 
	,@duracion VARBINARY (25) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum_Formacion_Duracion 
			 WHERE idCurriculumFormacion = @idCurriculumFormacion 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DuracionAgregar]
		 @idCurriculumFormacion
		,@fecha
		,@duracion
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_DuracionModificar]
		 @idCurriculumFormacion
		,@fecha
		,@duracion
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

