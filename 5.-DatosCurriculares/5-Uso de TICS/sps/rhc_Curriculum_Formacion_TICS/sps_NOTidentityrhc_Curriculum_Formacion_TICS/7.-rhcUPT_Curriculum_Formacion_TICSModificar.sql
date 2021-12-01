CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TICSAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idTipoTICS SMALLINT 
	,@herramientas VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
		IF NOT EXISTS( 
			 SELECT * 
 			 FROM rhc_Curriculum_Formacion_TICS 
			 WHERE idCurriculumFormacion = @idCurriculumFormacion 
		)
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TICSAgregar]
		 @idCurriculumFormacion
		,@idTipoTICS
		,@herramientas
		,usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TICSModificar]
		 @idCurriculumFormacion
		,@idTipoTICS
		,@herramientas
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END

GO

