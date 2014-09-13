USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_tabsections]    Script Date: 03/09/2013 16:02:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_tabsections]') AND type in (N'U'))
DROP TABLE [dbo].[hla_tabsections]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_tabsections]    Script Date: 03/09/2013 16:02:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_tabsections](
	[pkwindow] [varchar](50) NOT NULL,
	[pkseq] [numeric](3, 0) NOT NULL,
	[strdisplayname] [varchar](50) NOT NULL,
	[strutabname] [varchar](50) NOT NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_tabsections] PRIMARY KEY CLUSTERED 
(
	[pkwindow] ASC,
	[pkseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

