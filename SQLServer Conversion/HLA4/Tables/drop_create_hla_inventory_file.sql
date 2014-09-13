USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_inventory]    Script Date: 03/09/2013 15:54:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_inventory]') AND type in (N'U'))
DROP TABLE [dbo].[hla_inventory]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_inventory]    Script Date: 03/09/2013 15:54:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_inventory](
	[pkinventory] [numeric](8, 0) NOT NULL,
	[fksid] [numeric](8, 0) NOT NULL,
	[fkpid] [numeric](8, 0) NOT NULL,
	[fkbox] [numeric](6, 0) NOT NULL,
	[nbritemsstored] [numeric](4, 0) NOT NULL,
	[nbritemspendingadd] [numeric](4, 0) NOT NULL,
	[strcontents] [varchar](50) NOT NULL,
	[ynsterile] [char](1) NULL,
	[strinventorycomment] [varchar](250) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_inventory] PRIMARY KEY CLUSTERED 
(
	[pkinventory] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

