USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_security]    Script Date: 03/09/2013 16:01:37 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_security]') AND type in (N'U'))
DROP TABLE [dbo].[hla_security]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_security]    Script Date: 03/09/2013 16:01:37 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_security](
	[pksecuredobjectname] [varchar](50) NOT NULL,
	[nbrSecurityLevel] [numeric](2, 0) NOT NULL,
	[strlogid] [varchar](50) NOT NULL,
	[dtrecordsecured] [datetime] NULL,
 CONSTRAINT [PK_hla_security] PRIMARY KEY CLUSTERED 
(
	[pksecuredobjectname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

