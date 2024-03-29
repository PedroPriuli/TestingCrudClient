USE [Testing_Crud_Client]
GO
/****** Object:  Table [dbo].[client]    Script Date: 22/02/2024 08:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[client](
	[idclient] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[mail] [varchar](50) NULL,
	[logo] [text] NULL,
 CONSTRAINT [PK_client] PRIMARY KEY CLUSTERED 
(
	[idclient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rel_client_vs_address]    Script Date: 22/02/2024 08:37:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rel_client_vs_address](
	[idaddress] [int] IDENTITY(1,1) NOT NULL,
	[idclient] [int] NULL,
	[value] [varchar](100) NOT NULL,
 CONSTRAINT [PK_rel_client_vs_address] PRIMARY KEY CLUSTERED 
(
	[idaddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[rel_client_vs_address]  WITH CHECK ADD  CONSTRAINT [FK_client_vs_address] FOREIGN KEY([idclient])
REFERENCES [dbo].[client] ([idclient])
GO
ALTER TABLE [dbo].[rel_client_vs_address] CHECK CONSTRAINT [FK_client_vs_address]
GO
