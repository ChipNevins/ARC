USE [HLA_Test]
GO

IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_hla_person_flgdeleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hla_person] DROP CONSTRAINT [DF_hla_person_flgdeleted]
END

GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_person]    Script Date: 03/09/2013 15:57:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hla_person]') AND type in (N'U'))
DROP TABLE [dbo].[hla_person]
GO

USE [HLA_Test]
GO

/****** Object:  Table [dbo].[hla_person]    Script Date: 03/09/2013 15:57:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[hla_person](
	[pkpid] [numeric](8, 0) NOT NULL,
	[strlastname] [varchar](50) NOT NULL,
	[strfirstname] [varchar](50) NOT NULL,
	[strrefnum] [varchar](50) NOT NULL,
	[strpatientdonor] [varchar](50) NULL,
	[strcbuid] [varchar](50) NULL,
	[strnmdpid] [varchar](50) NULL,
	[strmrn] [varchar](50) NULL,
	[cdregcat] [numeric](6, 0) NULL,
	[cddonortype] [numeric](6, 0) NULL,
	[cdavailability] [numeric](6, 0) NULL,
	[cddonorlocation] [numeric](6, 0) NULL,
	[cddonorcenter] [numeric](6, 0) NULL,
	[cdwhoentered] [numeric](6, 0) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[strcomment] [varchar](2000) NULL,
	[strfamrelation] [varchar](250) NULL,
	[dtdob] [datetime] NULL,
	[strssn] [varchar](50) NULL,
 CONSTRAINT [PK_hla_person] PRIMARY KEY CLUSTERED 
(
	[pkpid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[hla_person] ADD  CONSTRAINT [DF_hla_person_flgdeleted]  DEFAULT ((0)) FOR [flgdeleted]
GO

