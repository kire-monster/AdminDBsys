USE [AdminDBsys]
GO
/****** Object:  Table [dbo].[UnCatServidorCatUsuarios]    Script Date: 03/10/2020 06:52:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnCatServidorCatUsuarios](
	[IdServidor] [int] NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[FechaSistema] [datetime] NOT NULL,
 CONSTRAINT [PK_UnCatServidorCatUsuarios] PRIMARY KEY CLUSTERED 
(
	[IdServidor] ASC,
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
