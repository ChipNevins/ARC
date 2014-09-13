USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_antigen_ambiguity]    Script Date: 03/09/2013 15:49:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_antigen_ambiguity]') AND type in (N'U'))
DROP TABLE [dbo].[hla_antigen_ambiguity]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_antigen_ambiguity]    Script Date: 03/09/2013 15:49:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_antigen_ambiguity](
	[pkantigenname] [varchar](50) NOT NULL,
	[pkeffectivedate] [datetime] NOT NULL,
	[strambiguitystring] [varchar](100) NOT NULL,
	[strcodedambiguity] [varchar](50) NULL,
 CONSTRAINT [PK_hla_antigen_ambiguity] PRIMARY KEY CLUSTERED 
(
	[pkantigenname] ASC,
	[pkeffectivedate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


