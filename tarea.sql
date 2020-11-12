TABLA SENSOR
USE [TEST]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sensor](
[IdSensor] [int] NOT NULL,
[IdSensorVisual] [int] NOT NULL,
[IdSensorProximidad] [int] NOT NULL,
CONSTRAINT [PK_Sensor] PRIMARY KEY CLUSTERED
(
[IdSensor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sensor] WITH CHECK ADD CONSTRAINT [FK_Sensor_SensorProximidad]
FOREIGN KEY([IdSensorProximidad])
REFERENCES [dbo].[SensorProximidad] ([IdSensorProximidad])
GO
ALTER TABLE [dbo].[Sensor] CHECK CONSTRAINT [FK_Sensor_SensorProximidad]
GO
ALTER TABLE [dbo].[Sensor] WITH CHECK ADD CONSTRAINT [FK_Sensor_SensorVisual] FOREIGN
KEY([IdSensorVisual])
REFERENCES [dbo].[SensorVisual] ([IdSensorVisual])
GO
ALTER TABLE [dbo].[Sensor] CHECK CONSTRAINT [FK_Sensor_SensorVisual]
GO
MARIA AUREALIA PAZ 617111341 ADMON. DE BASE DE DATOS. TAREA #2
TABLA SENSOR PROXIMIDAD
USE [TEST]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SensorProximidad](
[IdSensorProximidad] [int] NOT NULL,
[DistanciaMinima] [real] NOT NULL,
CONSTRAINT [PK_SensorProximidad] PRIMARY KEY CLUSTERED
(
[IdSensorProximidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
MARIA AUREALIA PAZ 617111341 ADMON. DE BASE DE DATOS. TAREA #2
TABLA SENSOR VISUAL
USE [TEST]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SensorVisual](
[IdSensorVisual] [int] NOT NULL,
[Resolucion] [real] NOT NULL,
CONSTRAINT [PK_SensorVisual] PRIMARY KEY CLUSTERED
(
[IdSensorVisual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
MARIA AUREALIA PAZ 617111341 ADMON. DE BASE DE DATOS. TAREA #2
TABLA ESCENARIO
USE [TEST]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Escenario](
[IdEscenario] [int] NOT NULL,
[Nombre] [varchar](50) NOT NULL,
[CoordenadaX1] [real] NOT NULL,
[CoordenadaY1] [real] NOT NULL,
[CoordenadaX2] [real] NOT NULL,
[CoordenadaY2] [real] NOT NULL,
[IdRobot] [int] NOT NULL,
CONSTRAINT [PK_Escenario] PRIMARY KEY CLUSTERED
(
[IdEscenario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Escenario] WITH CHECK ADD CONSTRAINT [FK_Escenario_Robot]
FOREIGN KEY([IdRobot])
REFERENCES [dbo].[Robot] ([IdRobot])
GO
ALTER TABLE [dbo].[Escenario] CHECK CONSTRAINT [FK_Escenario_Robot]
GO
MARIA AUREALIA PAZ 617111341 ADMON. DE BASE DE DATOS. TAREA #2
TABLA ROBOT
USE [TEST]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Robot](
[IdRobot] [int] NOT NULL,
[CoordenadaX] [real] NOT NULL,
[CoordenadaY] [real] NOT NULL,
[IdOrientacion] [int] NOT NULL,
[IdTarea] [int] NOT NULL,
[Estado] [bit] NOT NULL,
CONSTRAINT [PK_Robot] PRIMARY KEY CLUSTERED
(
[IdRobot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Robot] WITH CHECK ADD CONSTRAINT [FK_Robot_Orientacion] FOREIGN
KEY([IdOrientacion])
REFERENCES [dbo].[Orientacion] ([IdOrientacion])
GO
ALTER TABLE [dbo].[Robot] CHECK CONSTRAINT [FK_Robot_Orientacion]
GO
ALTER TABLE [dbo].[Robot] WITH CHECK ADD CONSTRAINT [FK_Robot_Tarea] FOREIGN
KEY([IdTarea])
REFERENCES [dbo].[Tarea] ([IdTarea])
GO
ALTER TABLE [dbo].[Robot] CHECK CONSTRAINT [FK_Robot_Tarea]
GO
MARIA AUREALIA PAZ 617111341 ADMON. DE BASE DE DATOS. TAREA #2
TABLA ORIENTACION
USE [TEST]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orientacion](
[IdOrientacion] [int] NOT NULL,
[Descripcion] [varchar](50) NOT NULL,
CONSTRAINT [PK_Orientacion] PRIMARY KEY CLUSTERED
(
[IdOrientacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
MARIA AUREALIA PAZ 617111341 ADMON. DE BASE DE DATOS. TAREA #2
TABLA TAREA
USE [TEST]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tarea](
[IdTarea] [int] NOT NULL,
[Descripcion] [varchar](50) NOT NULL,
[Prioridad] [int] NOT NULL,
CONSTRAINT [PK_Tarea] PRIMARY KEY CLUSTERED
(
[IdTarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO