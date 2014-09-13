USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_expected_typing]    Script Date: 03/09/2013 15:53:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_expected_typing]') AND type in (N'U'))
DROP TABLE [dbo].[hla_expected_typing]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_expected_typing]    Script Date: 03/09/2013 15:53:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_expected_typing](
	[pknmdpid] [varchar](50) NOT NULL,
	[dtshipped] [datetime] NULL,
	[dtlastprinted] [datetime] NULL,
	[stra1] [varchar](50) NULL,
	[stra2] [varchar](50) NULL,
	[strb1] [varchar](50) NULL,
	[strb2] [varchar](50) NULL,
	[strc1] [varchar](50) NULL,
	[strc2] [varchar](50) NULL,
	[strdrb11] [varchar](50) NULL,
	[strdrb12] [varchar](50) NULL,
	[strdrb31] [varchar](50) NULL,
	[strdrb32] [varchar](50) NULL,
	[strdrb41] [varchar](50) NULL,
	[strdrb42] [varchar](50) NULL,
	[strdrb51] [varchar](50) NULL,
	[strdrb52] [varchar](50) NULL,
	[strdqb11] [varchar](50) NULL,
	[strdqb12] [varchar](50) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[strdpb11] [varchar](50) NULL,
	[strdpb12] [varchar](50) NULL,
 CONSTRAINT [PK_hla_expected_typing] PRIMARY KEY CLUSTERED 
(
	[pknmdpid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

