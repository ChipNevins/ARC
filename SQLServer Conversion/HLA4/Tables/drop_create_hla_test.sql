USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_test]    Script Date: 03/09/2013 16:03:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_test]') AND type in (N'U'))
DROP TABLE [dbo].[hla_test]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_test]    Script Date: 03/09/2013 16:03:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_test](
	[pksid] [numeric](8, 0) NOT NULL,
	[pktestseq] [numeric](8, 0) NOT NULL,
	[fkpid] [numeric](8, 0) NOT NULL,
	[cdtestcode] [numeric](6, 0) NULL,
	[cdtesttype] [numeric](6, 0) NULL,
	[dtorderdate] [datetime] NULL,
	[dtresultdate] [datetime] NULL,
	[cdwhoresulted] [numeric](6, 0) NULL,
	[cdresultcode] [numeric](6, 0) NULL,
	[strresulttext] [varchar](2000) NULL,
	[strcomment] [varchar](2000) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[ynhlafinal] [varchar](50) NULL,
	[nbrturnarounddays] [numeric](3, 0) NULL,
 CONSTRAINT [PK_hla_test] PRIMARY KEY CLUSTERED 
(
	[pksid] ASC,
	[pktestseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

