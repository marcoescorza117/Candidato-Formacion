CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_EstudioAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idProgramaEducativo INT 
	,@estudio VARCHAR (150) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum_Formacion_Estudio 
			 WHERE idCurriculumFormacion = @idCurriculumFormacion 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_EstudioAgregar]
		 @idCurriculumFormacion
		,@idProgramaEducativo
		,@estudio
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_EstudioModificar]
		 @idCurriculumFormacion
		,@idProgramaEducativo
		,@estudio
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

