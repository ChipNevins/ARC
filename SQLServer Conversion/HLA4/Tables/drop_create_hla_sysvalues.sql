USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_sysvalues]    Script Date: 03/09/2013 16:02:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_sysvalues]') AND type in (N'U'))
DROP TABLE [dbo].[hla_sysvalues]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_sysvalues]    Script Date: 03/09/2013 16:02:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_sysvalues](
	[pkid] [varchar](50) NOT NULL,
	[strvalue] [varchar](1000) NOT NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_sysvalues] PRIMARY KEY CLUSTERED 
(
	[pkid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

