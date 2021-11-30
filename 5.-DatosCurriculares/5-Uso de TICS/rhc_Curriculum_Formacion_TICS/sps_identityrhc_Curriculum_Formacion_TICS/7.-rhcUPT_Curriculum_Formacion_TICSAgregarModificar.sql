CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TICSAgregarModificar]
	 @idTipoTICS SMALLINT 
	,@herramientas VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	IF ISNULL(@idCurriculumFormacion, 0) = 0
		BEGIN
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TICSAgregar]
		 @idTipoTICS
		,@herramientas
		,@usuarioRealizo
		,@idCurriculumFormacion OUTPUT 
		,@noError OUTPUT
		,@mensaje OUTPUT
		END
	ELSE
	BEGIN 
		EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TICSModificar]
		 @idTipoTICS
		,@herramientas
		,@usuarioRealizo
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
	END
END