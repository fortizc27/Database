CREATE TABLE [exp].[Empleado]
(
	  [IdEmpleado] INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Empleado PRIMARY KEY CLUSTERED(IdEmpleado)
	, [Nombre] VARCHAR(50) NOT NULL
	, [PrimerApellido] VARCHAR(50) NOT NULL
	, [SegundoApellido] VARCHAR(50) NOT NULL
	, [Edad] INT NOT NULL
	, [FechaNacimiento] DATETIME NOT NULL
	, [TipoIdentificacion] INT NOT NULL
	, [Identificacion] INT NOT NULL
	, CONSTRAINT FK_TipoIdentificacion FOREIGN KEY ([TipoIdentificacion]) REFERENCES [exp].[TipoIdentificacion]([IdTipoIdentificacion])
)
WITH (DATA_COMPRESSION = PAGE)
GO
