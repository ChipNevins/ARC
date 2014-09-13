USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_report_comment]    Script Date: 03/09/2013 15:59:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_report_comment]') AND type in (N'U'))
DROP TABLE [dbo].[hla_report_comment]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_report_comment]    Script Date: 03/09/2013 15:59:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_report_comment](
	[pkreportid] [numeric](8, 0) NOT NULL,
	[pkreportseq] [numeric](3, 0) NOT NULL,
	[pkdaterecordadded] [datetime] NOT NULL,
	[nbrcommentseq] [numeric](3, 0) NOT NULL,
	[dtcommentdate] [datetime] NOT NULL,
	[strcommenttext] [varchar](1000) NOT NULL,
	[ynnewitem] [char](1) NULL,
	[strwhoadded] [varchar](50) NULL,
	[fksid] [numeric](8, 0) NULL,
 CONSTRAINT [PK_hla_report_comment] PRIMARY KEY CLUSTERED 
(
	[pkreportid] ASC,
	[pkreportseq] ASC,
	[pkdaterecordadded] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

