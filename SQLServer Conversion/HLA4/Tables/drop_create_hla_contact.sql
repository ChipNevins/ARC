USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_contact]    Script Date: 03/09/2013 15:53:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_contact]') AND type in (N'U'))
DROP TABLE [dbo].[hla_contact]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_contact]    Script Date: 03/09/2013 15:53:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_contact](
	[pkprovidername] [varchar](60) NOT NULL,
	[pkhospitalname] [varchar](100) NOT NULL,
	[flgdeleted] [int] NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_contact] PRIMARY KEY CLUSTERED 
(
	[pkprovidername] ASC,
	[pkhospitalname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

