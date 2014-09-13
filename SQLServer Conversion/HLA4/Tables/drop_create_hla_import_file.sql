USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_import_file]    Script Date: 03/09/2013 15:54:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_import_file]') AND type in (N'U'))
DROP TABLE [dbo].[hla_import_file]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_import_file]    Script Date: 03/09/2013 15:54:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_import_file](
	[pkimportfilename] [varchar](60) NOT NULL,
	[pkimportdatetime] [datetime] NOT NULL,
	[strimporttype] [varchar](50) NOT NULL,
	[strimportstatus] [varchar](50) NULL,
 CONSTRAINT [PK_hla_import_file] PRIMARY KEY CLUSTERED 
(
	[pkimportfilename] ASC,
	[pkimportdatetime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

