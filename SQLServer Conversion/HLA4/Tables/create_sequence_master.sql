USE [HLA]
GO

/****** Object:  Table [dbo].[sequence_master]    Script Date: 09/05/2012 20:00:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[sequence_master](
	[sequence_name] [varchar](50) NOT NULL,
	[sequence_num] [int] NOT NULL,
 CONSTRAINT [PK_sequence_master] PRIMARY KEY CLUSTERED 
(
	[sequence_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

