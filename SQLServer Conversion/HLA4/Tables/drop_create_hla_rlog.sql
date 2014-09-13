USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_rlog]    Script Date: 03/09/2013 16:00:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_rlog]') AND type in (N'U'))
DROP TABLE [dbo].[hla_rlog]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_rlog]    Script Date: 03/09/2013 16:00:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_rlog](
	[pkspecimennum] [varchar](50) NOT NULL,
	[strwhoadded] [varchar](50) NOT NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_rlog] PRIMARY KEY CLUSTERED 
(
	[pkspecimennum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

