USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_recent]    Script Date: 03/09/2013 15:59:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_recent]') AND type in (N'U'))
DROP TABLE [dbo].[hla_recent]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_recent]    Script Date: 03/09/2013 15:59:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_recent](
	[pkuserdbname] [varchar](50) NOT NULL,
	[pkobjecttype] [varchar](50) NOT NULL,
	[pkobjectid] [numeric](8, 0) NOT NULL,
	[strdescription] [varchar](60) NOT NULL,
	[dtrecordused] [datetime] NULL,
 CONSTRAINT [PK_hla_recent] PRIMARY KEY CLUSTERED 
(
	[pkuserdbname] ASC,
	[pkobjecttype] ASC,
	[pkobjectid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

