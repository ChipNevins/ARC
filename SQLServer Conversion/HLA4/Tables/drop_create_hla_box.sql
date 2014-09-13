USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_box]    Script Date: 03/09/2013 15:51:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_box]') AND type in (N'U'))
DROP TABLE [dbo].[hla_box]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_box]    Script Date: 03/09/2013 15:51:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_box](
	[pkbox] [numeric](8, 0) NOT NULL,
	[strboxname] [varchar](50) NOT NULL,
	[nbrstack] [numeric](6, 0) NOT NULL,
	[strlabelinstack] [varchar](50) NOT NULL,
	[nbrmaxitems] [numeric](4, 0) NOT NULL,
	[strcontentsofbox] [varchar](50) NULL,
	[strdescription] [varchar](200) NULL,
	[strlocation] [varchar](100) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[flgdeleted] [numeric](1, 0) NULL,
 CONSTRAINT [PK_hla_box] PRIMARY KEY CLUSTERED 
(
	[pkbox] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

