USE [HLA_Test]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_hla_report_hdr_delflag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hla_report_hdr] DROP CONSTRAINT [DF_hla_report_hdr_delflag]
END

GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_report_hdr]    Script Date: 03/09/2013 15:59:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_report_hdr]') AND type in (N'U'))
DROP TABLE [dbo].[hla_report_hdr]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_report_hdr]    Script Date: 03/09/2013 15:59:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_report_hdr](
	[pkreportid] [numeric](8, 0) NOT NULL,
	[pkreportseq] [numeric](3, 0) NOT NULL,
	[strreportname] [varchar](60) NOT NULL,
	[strreportvariety] [varchar](50) NULL,
	[dtoriginaldate] [datetime] NULL,
	[dtupdateddate] [datetime] NULL,
	[strprovidername] [varchar](50) NULL,
	[strhospitalname] [varchar](70) NULL,
	[ynsenttoprovider] [char](1) NULL,
	[strwhoadded] [varchar](50) NULL,
	[dtrecordadded] [datetime] NULL,
	[yngenotyped] [varchar](50) NULL,
	[ynreportable] [varchar](50) NULL,
	[delflag] [numeric](1, 0) NULL,
 CONSTRAINT [PK_hla_report_hdr] PRIMARY KEY CLUSTERED 
(
	[pkreportid] ASC,
	[pkreportseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[hla_report_hdr] ADD  CONSTRAINT [DF_hla_report_hdr_delflag]  DEFAULT ((0)) FOR [delflag]
GO

