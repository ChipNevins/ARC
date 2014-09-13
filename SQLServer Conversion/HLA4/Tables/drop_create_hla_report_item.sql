USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_report_item]    Script Date: 03/09/2013 15:59:55 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_report_item]') AND type in (N'U'))
DROP TABLE [dbo].[hla_report_item]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_report_item]    Script Date: 03/09/2013 15:59:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_report_item](
	[pkreportid] [numeric](8, 0) NOT NULL,
	[pkreportseq] [numeric](3, 0) NOT NULL,
	[pkdaterecordadded] [datetime] NOT NULL,
	[nbritemseq] [numeric](3, 0) NOT NULL,
	[strpersonname] [varchar](60) NOT NULL,
	[strrelationtopt] [varchar](50) NULL,
	[strrefnum] [varchar](50) NULL,
	[dtaccessiondate] [datetime] NULL,
	[fkitempid] [numeric](8, 0) NULL,
	[fkitemsid] [numeric](8, 0) NULL,
	[ynnewitem] [char](1) NULL,
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
	[strdrb3451] [varchar](50) NULL,
	[strdrb3452] [varchar](50) NULL,
	[strdqb11] [varchar](50) NULL,
	[strdqb12] [varchar](50) NULL,
	[strnewloculist] [varchar](200) NULL,
	[strwhoadded] [varchar](50) NULL,
	[strhaplotype1] [varchar](50) NULL,
	[strhaplotype2] [varchar](50) NULL,
	[strdqa11] [varchar](50) NULL,
	[strdqa12] [varchar](50) NULL,
	[strdpa11] [varchar](50) NULL,
	[strdpa12] [varchar](50) NULL,
	[strdpb11] [varchar](50) NULL,
	[strdpb12] [varchar](50) NULL,
 CONSTRAINT [PK_hla_report_item] PRIMARY KEY CLUSTERED 
(
	[pkreportid] ASC,
	[pkreportseq] ASC,
	[pkdaterecordadded] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

