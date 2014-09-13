USE [HLA_Test]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_hla_antigen_flgdeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hla_antigen] DROP CONSTRAINT [DF_hla_antigen_flgdeleted]
END

GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_hla_antigen_flghighresantigen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hla_antigen] DROP CONSTRAINT [DF_hla_antigen_flghighresantigen]
END

GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_antigen]    Script Date: 03/09/2013 15:21:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_antigen]') AND type in (N'U'))
DROP TABLE [dbo].[hla_antigen]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_antigen]    Script Date: 03/09/2013 15:21:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_antigen](
	[pkantigenname] [varchar](50) NOT NULL,
	[flgdeleted] [int] NOT NULL,
	[dtrecordcreated] [date] NULL,
	[dtrecorddeleted] [date] NULL,
	[flghighresantigen] [int] NULL,
	[strseroequivalent] [varchar](50) NULL,
	[strambiguitystring] [varchar](100) NULL,
	[strcrantigens] [varchar](100) NULL,
	[strname2010] [varchar](50) NULL,
 CONSTRAINT [PK_hla_antigen] PRIMARY KEY CLUSTERED 
(
	[pkantigenname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[hla_antigen] ADD  CONSTRAINT [DF_hla_antigen_flgdeleted]  DEFAULT ((0)) FOR [flgdeleted]
GO

ALTER TABLE [dbo].[hla_antigen] ADD  CONSTRAINT [DF_hla_antigen_flghighresantigen]  DEFAULT ((0)) FOR [flghighresantigen]
GO


