CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionModificar]
	 @idInstitucion INT 
	,@institucion VARCHAR (250) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionModificarDatos]
		 @idInstitucion
		,@institucion
		,@idCurriculumFormacion  
		,@noError OUTPUT
		,@mensaje OUTPUT
END