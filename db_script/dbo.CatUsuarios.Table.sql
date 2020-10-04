USE [AdminDBsys]
GO
/****** Object:  Table [dbo].[CatUsuarios]    Script Date: 03/10/2020 06:51:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatUsuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Contrasenia] [varchar](255) NOT NULL,
	[FechaSistema] [date] NOT NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_CatUsuarios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
