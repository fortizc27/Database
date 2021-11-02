﻿CREATE PROCEDURE [exp].[TI_Eliminar]
	@IdTipoIdentificacion int

AS BEGIN
SET NOCOUNT ON

	BEGIN TRANSACTION TRASA
		BEGIN TRY

			DELETE FROM exp.TipoIdentificacion WHERE IdTipoidentificacion=@IdTipoIdentificacion

			COMMIT TRANSACTION TRASA
			SELECT 0 AS CodeError, '' AS MsgError
			
		END TRY

		BEGIN CATCH
			SELECT
				ERROR_NUMBER() AS CodeError,
				ERROR_MESSAGE() AS MsgError

			ROLLBACK TRANSACTION TRASA
		END CATCH
END

GO