USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_sbt_outbox]    Script Date: 03/09/2013 16:01:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_sbt_outbox]') AND type in (N'U'))
DROP TABLE [dbo].[hla_sbt_outbox]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_sbt_outbox]    Script Date: 03/09/2013 16:01:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_sbt_outbox](
	[pklocus] [varchar](50) NOT NULL,
	[pkrefnum] [varchar](50) NOT NULL,
	[strnmdpid] [varchar](50) NULL,
 CONSTRAINT [PK_hla_sbt_outbox] PRIMARY KEY CLUSTERED 
(
	[pklocus] ASC,
	[pkrefnum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

