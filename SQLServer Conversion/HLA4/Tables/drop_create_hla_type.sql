USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_type]    Script Date: 03/09/2013 16:03:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_type]') AND type in (N'U'))
DROP TABLE [dbo].[hla_type]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_type]    Script Date: 03/09/2013 16:03:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_type](
	[pkpid] [numeric](8, 0) NOT NULL,
	[pktypeseq] [numeric](8, 0) NOT NULL,
	[ynreportable] [char](1) NULL,
	[dttypingdate] [datetime] NULL,
	[stra1] [varchar](50) NULL,
	[stra2] [varchar](50) NULL,
	[strb1] [varchar](50) NULL,
	[strb2] [varchar](50) NULL,
	[strbw1] [varchar](50) NULL,
	[strbw2] [varchar](50) NULL,
	[strcw1] [varchar](50) NULL,
	[strcw2] [varchar](50) NULL,
	[strdrb11] [varchar](50) NULL,
	[strdrb12] [varchar](50) NULL,
	[strdrb31] [varchar](50) NULL,
	[strdrb32] [varchar](50) NULL,
	[strdrb41] [varchar](50) NULL,
	[strdrb42] [varchar](50) NULL,
	[strdrb51] [varchar](50) NULL,
	[strdrb52] [varchar](50) NULL,
	[strdqa11] [varchar](50) NULL,
	[strdqa12] [varchar](50) NULL,
	[strdqb11] [varchar](50) NULL,
	[strdqb12] [varchar](50) NULL,
	[strdpa11] [varchar](50) NULL,
	[strdpa12] [varchar](50) NULL,
	[strdpb11] [varchar](50) NULL,
	[strdpb12] [varchar](50) NULL,
	[strtypingmethod] [varchar](100) NULL,
	[cdwhoentered] [numeric](6, 0) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[strdr1] [varchar](50) NULL,
	[strdr2] [varchar](50) NULL,
	[strdq1] [varchar](50) NULL,
	[strdq2] [varchar](50) NULL,
 CONSTRAINT [PK_hla_type] PRIMARY KEY CLUSTERED 
(
	[pkpid] ASC,
	[pktypeseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

