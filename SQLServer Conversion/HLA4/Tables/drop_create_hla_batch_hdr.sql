USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_batch_hdr]    Script Date: 03/09/2013 15:51:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_batch_hdr]') AND type in (N'U'))
DROP TABLE [dbo].[hla_batch_hdr]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_batch_hdr]    Script Date: 03/09/2013 15:51:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_batch_hdr](
	[pkbatchtype] [varchar](50) NOT NULL,
	[pkbatchnumber] [numeric](6, 0) NOT NULL,
	[strrunstatus] [varchar](50) NOT NULL,
	[cdnmdpcontract] [numeric](5, 0) NULL,
	[strwhocreated] [varchar](50) NULL,
	[dtcreatedate] [datetime] NULL,
	[dtupdateddate] [datetime] NULL,
 CONSTRAINT [PK_hla_batch_hdr] PRIMARY KEY CLUSTERED 
(
	[pkbatchtype] ASC,
	[pkbatchnumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

