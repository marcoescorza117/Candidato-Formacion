CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_TICSModificar]
	 @idTipoTICS SMALLINT 
	,@herramientas VARCHAR (1) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_TICSModificarDatos]
		 @idTipoTICS
		,@herramientas
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
END