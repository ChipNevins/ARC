USE [HLA_Test]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_hla_worksheet_flgdeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hla_worksheet] DROP CONSTRAINT [DF_hla_worksheet_flgdeleted]
END

GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_worksheet]    Script Date: 03/09/2013 16:04:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_worksheet]') AND type in (N'U'))
DROP TABLE [dbo].[hla_worksheet]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_worksheet]    Script Date: 03/09/2013 16:04:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_worksheet](
	[pkworksheet] [numeric](6, 0) NOT NULL,
	[strworksheetname] [varchar](50) NOT NULL,
	[stritems] [varchar](500) NOT NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_worksheet] PRIMARY KEY CLUSTERED 
(
	[pkworksheet] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[hla_worksheet] ADD  CONSTRAINT [DF_hla_worksheet_flgdeleted]  DEFAULT ((0)) FOR [flgdeleted]
GO

