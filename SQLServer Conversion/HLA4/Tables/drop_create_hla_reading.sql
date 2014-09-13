USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_reading]    Script Date: 03/09/2013 15:58:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_reading]') AND type in (N'U'))
DROP TABLE [dbo].[hla_reading]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_reading]    Script Date: 03/09/2013 15:58:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_reading](
	[pkrefnum] [varchar](50) NOT NULL,
	[pklocus] [varchar](50) NOT NULL,
	[pkag1] [varchar](200) NOT NULL,
	[pkag2] [varchar](200) NOT NULL,
	[strimportsource] [varchar](50) NULL,
	[strimportfilename] [varchar](60) NULL,
	[strprobes] [varchar](200) NULL,
	[strkitname] [varchar](50) NULL,
	[dtkitexpirationdate] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_reading] PRIMARY KEY CLUSTERED 
(
	[pkrefnum] ASC,
	[pklocus] ASC,
	[pkag1] ASC,
	[pkag2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

