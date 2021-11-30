CREATE PROCEDURE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionModificar]
	 @idCurriculumFormacion INT 
	,@idInstitucion INT 
	,@institucion VARCHAR (250) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionModificarDatos]
		 @idCurriculumFormacion
		,@idInstitucion
		,@institucion
		,@noError OUTPUT
		,@mensaje OUTPUT
END

GO

