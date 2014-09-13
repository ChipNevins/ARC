USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_panel]    Script Date: 03/09/2013 14:57:47 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_panel]') AND type in (N'U'))
DROP TABLE [dbo].[hla_panel]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_panel]    Script Date: 03/09/2013 14:57:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hla_panel](
	[pkpanel] [numeric](6, 0) NOT NULL,
	[strpaneltype] [nvarchar](50) NOT NULL,
	[strpanelname] [nvarchar](50) NOT NULL,
	[strwhocreated] [nvarchar](50) NULL,
	[dtrecordcreated] [date] NULL,
	[flgclosed] [numeric](1, 0) NULL,
	[dtprinted] [date] NULL,
 CONSTRAINT [PK_hla_panel] PRIMARY KEY CLUSTERED 
(
	[pkpanel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

