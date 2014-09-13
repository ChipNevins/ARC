USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_code_extras]    Script Date: 03/09/2013 15:53:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_code_extras]') AND type in (N'U'))
DROP TABLE [dbo].[hla_code_extras]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_code_extras]    Script Date: 03/09/2013 15:53:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_code_extras](
	[pkcodetype] [varchar](50) NOT NULL,
	[pkcodenumber] [numeric](8, 0) NOT NULL,
	[pkname] [varchar](50) NOT NULL,
	[pkvalueseq] [numeric](3, 0) NOT NULL,
	[strvaluename] [varchar](100) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_code_extras] PRIMARY KEY CLUSTERED 
(
	[pkcodetype] ASC,
	[pkcodenumber] ASC,
	[pkname] ASC,
	[pkvalueseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

