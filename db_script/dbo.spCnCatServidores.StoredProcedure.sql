USE [AdminDBsys]
GO
/****** Object:  StoredProcedure [dbo].[spCnCatServidores]    Script Date: 03/10/2020 06:52:00 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCnCatServidores](
@Opcion TINYINT = 0
,@IP VARCHAR(100) = NULL
)
AS
BEGIN
	SET NOCOUNT ON

	IF(@Opcion = 0 )
	BEGIN 
		SELECT 
			 s.Id As IPServidor
			,s.Nombre As Servidor
			,s.[IP]
			,u.Id As IdUsuario
			,u.Nombre As Usuario
			,u.Contrasenia
		FROM dbo.UnCatServidorCatUsuarios AS uSU WITH(NOLOCK) 
		JOIN dbo.CatServidores AS s WITH(NOLOCK) ON uSU.IdServidor = s.Id 
		JOIN dbo.CatUsuarios AS u WITH(NOLOCK) ON uSU.IdUsuario = u.Id
		WHERE s.[Status] = 1 AND u.[Status] = 1
	END

	
	ELSE IF(@Opcion = 1)
	BEGIN 
		SELECT 
			 s.Id As IPServidor
			,s.Nombre As Servidor
			,s.[IP]
			,u.Id As IdUsuario
			,u.Nombre As Usuario
			,u.Contrasenia
		FROM dbo.UnCatServidorCatUsuarios AS uSU WITH(NOLOCK) 
		JOIN dbo.CatServidores AS s WITH(NOLOCK) ON uSU.IdServidor = s.Id 
		JOIN dbo.CatUsuarios AS u WITH(NOLOCK) ON uSU.IdUsuario = u.Id
		WHERE s.[Status] = 1 
		AND u.[Status] = 1
		AND s.[IP] = @IP
	END

	SET NOCOUNT OFF
END 
GO
