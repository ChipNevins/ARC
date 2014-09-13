USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_canned_comment]    Script Date: 03/09/2013 15:52:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_canned_comment]') AND type in (N'U'))
DROP TABLE [dbo].[hla_canned_comment]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_canned_comment]    Script Date: 03/09/2013 15:52:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_canned_comment](
	[pkcannedabbr] [varchar](50) NOT NULL,
	[strcannedcomment] [varchar](1000) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_canned_comment] PRIMARY KEY CLUSTERED 
(
	[pkcannedabbr] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

