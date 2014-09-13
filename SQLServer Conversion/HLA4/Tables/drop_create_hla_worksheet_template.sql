USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_worksheet_template]    Script Date: 03/09/2013 14:58:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_worksheet_template]') AND type in (N'U'))
DROP TABLE [dbo].[hla_worksheet_template]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_worksheet_template]    Script Date: 03/09/2013 14:58:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[hla_worksheet_template](
	[pkregcategory] [numeric](6, 0) NOT NULL,
	[pkdonortype] [numeric](6, 0) NOT NULL,
	[pktestcode] [numeric](6, 0) NOT NULL,
	[fkworksheet] [numeric](6, 0) NULL,
 CONSTRAINT [PK_hla_worksheet_template] PRIMARY KEY CLUSTERED 
(
	[pkregcategory] ASC,
	[pkdonortype] ASC,
	[pktestcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


