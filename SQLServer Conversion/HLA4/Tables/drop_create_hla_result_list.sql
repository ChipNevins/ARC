USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_result_list]    Script Date: 03/09/2013 16:00:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_result_list]') AND type in (N'U'))
DROP TABLE [dbo].[hla_result_list]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_result_list]    Script Date: 03/09/2013 16:00:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_result_list](
	[pkresultowner] [varchar](50) NOT NULL,
	[pkresultsid] [numeric](8, 0) NOT NULL,
	[pkdaterecordadded] [datetime] NOT NULL,
	[strresultstatus] [varchar](50) NULL,
	[strtestseqresulted] [varchar](50) NULL,
	[dtresultsdue] [datetime] NULL,
	[ynaddtoreportqueue] [char](1) NULL,
	[ynaddtoopenbatch] [char](1) NULL,
	[strcomment] [varchar](200) NULL,
	[strwhomodified] [varchar](50) NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_result_list] PRIMARY KEY CLUSTERED 
(
	[pkresultowner] ASC,
	[pkresultsid] ASC,
	[pkdaterecordadded] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

