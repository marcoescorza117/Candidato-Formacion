CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TICSModificar]
	 @idCurriculumFormacion INT 
	,@idTipoTICS SMALLINT 
	,@herramientas VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TICSModificarDatos]
		 @idCurriculumFormacion
		,@idTipoTICS
		,@herramientas
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

