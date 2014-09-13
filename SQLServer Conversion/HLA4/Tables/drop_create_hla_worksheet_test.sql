USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_worksheet_test]    Script Date: 03/09/2013 16:05:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_worksheet_test]') AND type in (N'U'))
DROP TABLE [dbo].[hla_worksheet_test]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_worksheet_test]    Script Date: 03/09/2013 16:05:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_worksheet_test](
	[pkworksheettest] [numeric](8, 0) NOT NULL,
	[fkworksheet] [numeric](6, 0) NOT NULL,
	[fkpid] [numeric](8, 0) NOT NULL,
	[fksid] [numeric](8, 0) NOT NULL,
	[fktestseq] [numeric](3, 0) NOT NULL,
	[strlocus] [varchar](50) NOT NULL,
	[fkpanel] [numeric](6, 0) NULL,
	[nbrloginsession] [numeric](6, 0) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[flgpriorityitem] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_worksheet_test] PRIMARY KEY CLUSTERED 
(
	[pkworksheettest] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

