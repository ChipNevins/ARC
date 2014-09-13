USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_specimen]    Script Date: 03/09/2013 16:02:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_specimen]') AND type in (N'U'))
DROP TABLE [dbo].[hla_specimen]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_specimen]    Script Date: 03/09/2013 16:02:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_specimen](
	[pksid] [numeric](8, 0) NOT NULL,
	[fkpid] [numeric](8, 0) NOT NULL,
	[strspecimennum] [varchar](50) NOT NULL,
	[dtaccessiondate] [datetime] NULL,
	[dtbleeddate] [datetime] NULL,
	[strspecimentype] [varchar](150) NULL,
	[cdhospital] [numeric](6, 0) NULL,
	[strcomment] [varchar](2000) NULL,
	[cdwhoentered] [numeric](6, 0) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[cdnmdpcontract] [numeric](6, 0) NULL,
	[strmrn] [varchar](50) NULL,
 CONSTRAINT [PK_hla_specimen] PRIMARY KEY CLUSTERED 
(
	[pksid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

