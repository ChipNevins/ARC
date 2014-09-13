USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_packinglist]    Script Date: 03/09/2013 15:55:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_packinglist]') AND type in (N'U'))
DROP TABLE [dbo].[hla_packinglist]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_packinglist]    Script Date: 03/09/2013 15:55:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_packinglist](
	[pkpackinglist] [numeric](8, 0) NOT NULL,
	[strlocalname] [varchar](50) NOT NULL,
	[strnmdpname] [varchar](50) NOT NULL,
	[dtrequested] [datetime] NOT NULL,
	[cdwhoentered] [numeric](6, 0) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_packinglist] PRIMARY KEY CLUSTERED 
(
	[pkpackinglist] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

