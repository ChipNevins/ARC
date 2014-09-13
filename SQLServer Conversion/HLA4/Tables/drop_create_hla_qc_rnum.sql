USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_qc_rnum]    Script Date: 03/09/2013 15:57:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_qc_rnum]') AND type in (N'U'))
DROP TABLE [dbo].[hla_qc_rnum]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_qc_rnum]    Script Date: 03/09/2013 15:57:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_qc_rnum](
	[rnum] [varchar](50) NOT NULL,
	[nbrspecimens] [numeric](2, 0) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

