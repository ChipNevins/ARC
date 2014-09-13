USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_audit]    Script Date: 03/09/2013 15:50:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_audit]') AND type in (N'U'))
DROP TABLE [dbo].[hla_audit]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_audit]    Script Date: 03/09/2013 15:50:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_audit](
	[pkauditseq] [numeric](8, 0) NOT NULL,
	[strrefnum] [varchar](50) NULL,
	[strauditactivity] [varchar](50) NULL,
	[strtablename] [varchar](50) NULL,
	[strrecordidentifier] [varchar](50) NULL,
	[strfieldname] [varchar](50) NULL,
	[stroldvalue] [varchar](250) NULL,
	[strnewvalue] [varchar](250) NULL,
	[strwhomadechange] [varchar](50) NULL,
	[dtchanged] [datetime] NULL,
 CONSTRAINT [PK_hla_audit] PRIMARY KEY CLUSTERED 
(
	[pkauditseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

