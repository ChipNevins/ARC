USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_packinglist_item]    Script Date: 03/09/2013 15:55:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_packinglist_item]') AND type in (N'U'))
DROP TABLE [dbo].[hla_packinglist_item]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_packinglist_item]    Script Date: 03/09/2013 15:55:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_packinglist_item](
	[pkpackinglist] [numeric](8, 0) NOT NULL,
	[pkpackinglistitemseq] [numeric](8, 0) NOT NULL,
	[strboxslotlocation] [varchar](50) NOT NULL,
	[strnmdpid] [varchar](50) NULL,
	[strcategory] [varchar](50) NULL,
	[nbrturnarounddays] [numeric](2, 0) NULL,
	[strdonorcenter] [varchar](50) NULL,
	[strsampletype] [varchar](50) NULL,
	[strtestlist] [varchar](100) NULL,
	[ynhighresrequest] [char](1) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[strloginrefnum] [varchar](50) NULL,
	[strlastname] [varchar](50) NULL,
	[strfirstname] [varchar](50) NULL,
	[strmrn] [varchar](50) NULL,
 CONSTRAINT [PK_hla_packinglist_item] PRIMARY KEY CLUSTERED 
(
	[pkpackinglist] ASC,
	[pkpackinglistitemseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

