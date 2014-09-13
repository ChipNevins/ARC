USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_session]    Script Date: 03/09/2013 16:01:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_session]') AND type in (N'U'))
DROP TABLE [dbo].[hla_session]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_session]    Script Date: 03/09/2013 16:01:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_session](
	[pksessionnumber] [numeric](9, 0) NOT NULL,
	[nbrdisplaynumber] [numeric](6, 0) NOT NULL,
	[strusername] [varchar](50) NOT NULL,
	[strsessiontype] [varchar](50) NOT NULL,
	[dtstarted] [datetime] NULL,
	[dtended] [datetime] NULL,
 CONSTRAINT [PK_hla_session] PRIMARY KEY CLUSTERED 
(
	[pksessionnumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

