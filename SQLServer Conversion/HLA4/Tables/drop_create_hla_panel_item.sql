USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_panel_item]    Script Date: 03/09/2013 14:44:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_panel_item]') AND type in (N'U'))
DROP TABLE [dbo].[hla_panel_item]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_panel_item]    Script Date: 03/09/2013 14:44:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_panel_item](
	[pkpanel] [numeric](6, 0) NOT NULL,
	[pkpanelitemseq] [numeric](3, 0) NOT NULL,
	[nbrrow] [numeric](2, 0) NOT NULL,
	[nbrcolumn] [numeric](2, 0) NOT NULL,
	[strwelllabel] [nvarchar](50) NOT NULL,
	[strcontents] [nvarchar](50) NULL,
	[strcontentstype] [nvarchar](50) NULL,
	[dtrecordcreated] [date] NULL,
	[fkpid] [numeric](8, 0) NULL,
	[fksid] [numeric](8, 0) NULL,
	[fktestseq] [numeric](3, 0) NULL,
	[strnmdpid] [nvarchar](50) NULL,
	[strlocus] [nvarchar](50) NULL,
 CONSTRAINT [PK_hla_panel_item] PRIMARY KEY CLUSTERED 
(
	[pkpanel] ASC,
	[pkpanelitemseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


