USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_lock]    Script Date: 03/09/2013 15:54:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_lock]') AND type in (N'U'))
DROP TABLE [dbo].[hla_lock]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_lock]    Script Date: 03/09/2013 15:54:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_lock](
	[pkLockedObjectname] [varchar](30) NOT NULL,
	[strLogId] [varchar](30) NOT NULL,
	[dtRecordLock] [datetime] NULL,
 CONSTRAINT [PK_hla_lock] PRIMARY KEY CLUSTERED 
(
	[pkLockedObjectname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HLA Object Locks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'hla_lock'
GO

