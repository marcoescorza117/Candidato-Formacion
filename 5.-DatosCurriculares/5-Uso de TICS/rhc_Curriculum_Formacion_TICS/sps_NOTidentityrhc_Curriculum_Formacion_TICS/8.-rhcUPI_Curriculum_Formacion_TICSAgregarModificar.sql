CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_TICSAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idTipoTICS SMALLINT 
	,@herramientas VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TICSAgregarModificar]
		 @idCurriculumFormacion
		,@idTipoTICS
		,@herramientas
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END