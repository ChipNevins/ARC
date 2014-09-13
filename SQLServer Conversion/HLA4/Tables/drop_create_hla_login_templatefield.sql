USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_login_templatefield]    Script Date: 03/09/2013 15:55:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_login_templatefield]') AND type in (N'U'))
DROP TABLE [dbo].[hla_login_templatefield]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_login_templatefield]    Script Date: 03/09/2013 15:55:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_login_templatefield](
	[pklogintemplate] [numeric](4, 0) NOT NULL,
	[pklogintemplateseq] [numeric](2, 0) NOT NULL,
	[strdisplayname] [varchar](50) NOT NULL,
	[ynused] [char](1) NULL,
	[ynrequired] [char](1) NULL,
	[strdatatype] [varchar](50) NULL,
	[strcodetype] [varchar](50) NULL,
	[nbrdefaultcodevalue] [numeric](4, 0) NULL,
	[strdefaulttextvalue] [varchar](250) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[ynlocked] [char](1) NULL,
 CONSTRAINT [PK_hla_login_templatefield] PRIMARY KEY CLUSTERED 
(
	[pklogintemplate] ASC,
	[pklogintemplateseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

