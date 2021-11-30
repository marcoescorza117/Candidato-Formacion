CREATE PROCEDURE [dbo].[rhcUPI_Curriculum_Formacion_InstitucionAgregarModificar]
	 @idCurriculumFormacion INT 
	,@idInstitucion INT 
	,@institucion VARCHAR (250) 
	,@usuarioRealizo VARCHAR (60)

	,@noError INT OUTPUT 
	,@mensaje VARCHAR(255) OUTPUT
AS 
BEGIN 
	 EXECUTE [dbo].[rhcUPT_Curriculum_Formacion_InstitucionAgregarModificar]
		 @idCurriculumFormacion
		,@idInstitucion
		,@institucion
		,@usuarioRealizo
		,@noError OUTPUT
		,@mensaje OUTPUT
END