CREATE PROCEDURE [exp].[TI_Obtener]
	@IdTipoIdentificacion int = NULL

AS BEGIN
SET NOCOUNT ON

	SELECT
		TI.IdTipoidentificacion,
		TI.Descripcion
	FROM exp.TipoIdentificacion TI
	WHERE
	(@IdTipoIdentificacion IS NULL OR IdTipoidentificacion=@IdTipoIdentificacion)
END

GO