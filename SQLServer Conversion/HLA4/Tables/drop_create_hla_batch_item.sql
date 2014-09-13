USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_batch_item]    Script Date: 03/09/2013 15:51:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_batch_item]') AND type in (N'U'))
DROP TABLE [dbo].[hla_batch_item]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_batch_item]    Script Date: 03/09/2013 15:51:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_batch_item](
	[pkbatchtype] [varchar](50) NOT NULL,
	[pkbatchnumber] [numeric](6, 0) NOT NULL,
	[pksid] [numeric](8, 0) NOT NULL,
	[fkpid] [numeric](8, 0) NOT NULL,
	[strnmdpid] [varchar](50) NULL,
	[stra] [varchar](50) NULL,
	[strbpr] [varchar](50) NULL,
	[strbpu] [varchar](50) NULL,
	[strc] [varchar](50) NULL,
	[strdrb1] [varchar](50) NULL,
	[strdrb3] [varchar](50) NULL,
	[strdrb4] [varchar](50) NULL,
	[strdrb5] [varchar](50) NULL,
	[strdpa1] [varchar](50) NULL,
	[strdpb1] [varchar](50) NULL,
	[strdqa1] [varchar](50) NULL,
	[strdqb1] [varchar](50) NULL,
	[strrunstatus] [varchar](50) NULL,
	[strerrortext] [varchar](150) NULL,
	[dtcreatedate] [datetime] NULL,
	[dtupdateddate] [datetime] NULL,
	[strhlatype] [varchar](250) NULL,
 CONSTRAINT [PK_hla_batch_item_1] PRIMARY KEY CLUSTERED 
(
	[pkbatchtype] ASC,
	[pkbatchnumber] ASC,
	[pksid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

