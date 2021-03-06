USE [AdminDBsys]
GO
/****** Object:  Table [dbo].[CatServidores]    Script Date: 03/10/2020 06:51:58 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatServidores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[IP] [varchar](100) NOT NULL,
	[FechaSistema] [datetime] NOT NULL,
	[Status] [tinyint] NOT NULL,
 CONSTRAINT [PK_CatServidor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
