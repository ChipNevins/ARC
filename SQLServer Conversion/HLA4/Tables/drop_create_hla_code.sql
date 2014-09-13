USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_code]    Script Date: 03/09/2013 15:52:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_code]') AND type in (N'U'))
DROP TABLE [dbo].[hla_code]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_code]    Script Date: 03/09/2013 15:52:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_code](
	[pkcodetype] [varchar](50) NOT NULL,
	[pkcodenumber] [numeric](8, 0) NOT NULL,
	[strcodename] [varchar](100) NOT NULL,
	[strcodeshortname] [varchar](50) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_code] PRIMARY KEY CLUSTERED 
(
	[pkcodetype] ASC,
	[pkcodenumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

