USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_worklist_item]    Script Date: 03/09/2013 16:03:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_worklist_item]') AND type in (N'U'))
DROP TABLE [dbo].[hla_worklist_item]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_worklist_item]    Script Date: 03/09/2013 16:03:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_worklist_item](
	[pkusername] [varchar](50) NOT NULL,
	[pkworklistname] [varchar](50) NOT NULL,
	[pkworklistitemseq] [numeric](8, 0) NOT NULL,
	[fkpid] [numeric](8, 0) NULL,
	[fksid] [numeric](8, 0) NULL,
	[strnmdpid] [varchar](50) NULL,
	[nbrloginsession] [numeric](6, 0) NULL,
	[strworklistdata] [varchar](200) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_worklist_item] PRIMARY KEY CLUSTERED 
(
	[pkusername] ASC,
	[pkworklistname] ASC,
	[pkworklistitemseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

