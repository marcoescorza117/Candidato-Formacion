CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_InstitucionAgregarModificar]
	 @idInstitucion INT 
	,@institucion VARCHAR (250) 
	,@usuarioRealizo VARCHAR (60)
	,@idCurriculumFormacion INT OUTPUT
	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionAgregarModificar]
		 @idInstitucion
		,@institucion
		,@usuarioRealizo
		,@idCurriculumFormacion OUTPUT  
		,@noError OUTPUT
		,@mensaje OUTPUT
END