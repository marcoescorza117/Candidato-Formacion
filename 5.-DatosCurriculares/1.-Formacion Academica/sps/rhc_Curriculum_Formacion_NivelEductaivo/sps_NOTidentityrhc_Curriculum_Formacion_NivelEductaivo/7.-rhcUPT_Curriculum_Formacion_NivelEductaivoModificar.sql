CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_NivelEductaivoAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idNivelEducativo TINYINT 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum_Formacion_NivelEductaivo 
			 WHERE idCurriculumFormacion = @idCurriculumFormacion 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_NivelEductaivoAgregar]
		 @idCurriculumFormacion
		,@idNivelEducativo
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_NivelEductaivoModificar]
		 @idCurriculumFormacion
		,@idNivelEducativo
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

