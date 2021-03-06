USE [master]
GO
/****** Object:  Database [HLA]    Script Date: 09/09/2012 17:15:09 ******/
CREATE DATABASE [HLA] ON  PRIMARY 
( NAME = N'HLA', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\HLA.mdf' , SIZE = 1297408KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HLA_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\HLA.ldf' , SIZE = 265344KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HLA] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HLA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HLA] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HLA] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HLA] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HLA] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HLA] SET ARITHABORT OFF
GO
ALTER DATABASE [HLA] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HLA] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HLA] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HLA] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HLA] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HLA] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HLA] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HLA] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HLA] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HLA] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HLA] SET  DISABLE_BROKER
GO
ALTER DATABASE [HLA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HLA] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HLA] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HLA] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HLA] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HLA] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HLA] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [HLA] SET  READ_WRITE
GO
ALTER DATABASE [HLA] SET RECOVERY SIMPLE
GO
ALTER DATABASE [HLA] SET  MULTI_USER
GO
ALTER DATABASE [HLA] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HLA] SET DB_CHAINING OFF
GO
USE [HLA]
GO
/****** Object:  User [hla]    Script Date: 09/09/2012 17:15:09 ******/
CREATE USER [hla] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Schema [HLA]    Script Date: 09/09/2012 17:15:09 ******/
CREATE SCHEMA [HLA] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[pbcatvld]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pbcatvld](
	[pbv_name] [varchar](30) NOT NULL,
	[pbv_vald] [varchar](254) NULL,
	[pbv_type] [smallint] NULL,
	[pbv_cntr] [int] NULL,
	[pbv_msg] [varchar](254) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pbcatv_x] ON [dbo].[pbcatvld] 
(
	[pbv_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pbcattbl]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pbcattbl](
	[pbt_tnam] [varchar](129) NOT NULL,
	[pbt_tid] [int] NULL,
	[pbt_ownr] [varchar](129) NOT NULL,
	[pbd_fhgt] [smallint] NULL,
	[pbd_fwgt] [smallint] NULL,
	[pbd_fitl] [varchar](1) NULL,
	[pbd_funl] [varchar](1) NULL,
	[pbd_fchr] [smallint] NULL,
	[pbd_fptc] [smallint] NULL,
	[pbd_ffce] [varchar](18) NULL,
	[pbh_fhgt] [smallint] NULL,
	[pbh_fwgt] [smallint] NULL,
	[pbh_fitl] [varchar](1) NULL,
	[pbh_funl] [varchar](1) NULL,
	[pbh_fchr] [smallint] NULL,
	[pbh_fptc] [smallint] NULL,
	[pbh_ffce] [varchar](18) NULL,
	[pbl_fhgt] [smallint] NULL,
	[pbl_fwgt] [smallint] NULL,
	[pbl_fitl] [varchar](1) NULL,
	[pbl_funl] [varchar](1) NULL,
	[pbl_fchr] [smallint] NULL,
	[pbl_fptc] [smallint] NULL,
	[pbl_ffce] [varchar](18) NULL,
	[pbt_cmnt] [varchar](254) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pbcatt_x] ON [dbo].[pbcattbl] 
(
	[pbt_tnam] ASC,
	[pbt_ownr] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pbcatfmt]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pbcatfmt](
	[pbf_name] [varchar](30) NOT NULL,
	[pbf_frmt] [varchar](254) NULL,
	[pbf_type] [smallint] NULL,
	[pbf_cntr] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pbcatf_x] ON [dbo].[pbcatfmt] 
(
	[pbf_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pbcatedt]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pbcatedt](
	[pbe_name] [varchar](30) NOT NULL,
	[pbe_edit] [varchar](254) NULL,
	[pbe_type] [smallint] NULL,
	[pbe_cntr] [int] NULL,
	[pbe_seqn] [smallint] NOT NULL,
	[pbe_flag] [int] NULL,
	[pbe_work] [varchar](32) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pbcate_x] ON [dbo].[pbcatedt] 
(
	[pbe_name] ASC,
	[pbe_seqn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pbcatcol]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pbcatcol](
	[pbc_tnam] [varchar](129) NOT NULL,
	[pbc_tid] [int] NULL,
	[pbc_ownr] [varchar](129) NOT NULL,
	[pbc_cnam] [varchar](129) NOT NULL,
	[pbc_cid] [smallint] NULL,
	[pbc_labl] [varchar](254) NULL,
	[pbc_lpos] [smallint] NULL,
	[pbc_hdr] [varchar](254) NULL,
	[pbc_hpos] [smallint] NULL,
	[pbc_jtfy] [smallint] NULL,
	[pbc_mask] [varchar](31) NULL,
	[pbc_case] [smallint] NULL,
	[pbc_hght] [smallint] NULL,
	[pbc_wdth] [smallint] NULL,
	[pbc_ptrn] [varchar](31) NULL,
	[pbc_bmap] [varchar](1) NULL,
	[pbc_init] [varchar](254) NULL,
	[pbc_cmnt] [varchar](254) NULL,
	[pbc_edit] [varchar](31) NULL,
	[pbc_tag] [varchar](254) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [pbcatc_x] ON [dbo].[pbcatcol] 
(
	[pbc_tnam] ASC,
	[pbc_ownr] ASC,
	[pbc_cnam] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[messages]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[messages](
	[msgid] [varchar](50) NOT NULL,
	[msgtitle] [varchar](50) NOT NULL,
	[msgtext] [varchar](200) NOT NULL,
	[msgicon] [varchar](50) NULL,
	[msgbutton] [varchar](50) NOT NULL,
	[msgdefaultbutton] [numeric](1, 0) NOT NULL,
	[msgseverity] [numeric](2, 0) NULL,
	[msgprint] [char](1) NULL,
	[msguserinput] [char](1) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_worksheet_test]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_worksheet_test](
	[pkworksheettest] [numeric](8, 0) NOT NULL,
	[fkworksheet] [numeric](6, 0) NOT NULL,
	[fkpid] [numeric](8, 0) NOT NULL,
	[fksid] [numeric](8, 0) NOT NULL,
	[fktestseq] [numeric](3, 0) NOT NULL,
	[strlocus] [varchar](50) NOT NULL,
	[fkpanel] [numeric](6, 0) NULL,
	[nbrloginsession] [numeric](6, 0) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[flgpriorityitem] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_worksheet_test] PRIMARY KEY CLUSTERED 
(
	[pkworksheettest] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [I_HLA_WORKSHEET_SPEC] ON [dbo].[hla_worksheet_test] 
(
	[fksid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [I_HLA_WORKSHEET_WS] ON [dbo].[hla_worksheet_test] 
(
	[fkworksheet] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hla_worksheet_template]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hla_worksheet_template](
	[pkregcategory] [numeric](6, 0) NOT NULL,
	[pkdonortype] [numeric](6, 0) NOT NULL,
	[pktestcode] [numeric](6, 0) NOT NULL,
	[fkworksheet] [numeric](6, 0) NULL,
 CONSTRAINT [PK_hla_worksheet_template] PRIMARY KEY CLUSTERED 
(
	[pkregcategory] ASC,
	[pkdonortype] ASC,
	[pktestcode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hla_worksheet]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_worksheet](
	[pkworksheet] [numeric](6, 0) NOT NULL,
	[strworksheetname] [varchar](50) NOT NULL,
	[stritems] [varchar](500) NOT NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_worksheet] PRIMARY KEY CLUSTERED 
(
	[pkworksheet] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_worklist_item]    Script Date: 09/09/2012 17:15:10 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_type]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_type](
	[pkpid] [numeric](8, 0) NOT NULL,
	[pktypeseq] [numeric](8, 0) NOT NULL,
	[ynreportable] [char](1) NULL,
	[dttypingdate] [datetime] NULL,
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
	[strdrb31] [varchar](50) NULL,
	[strdrb32] [varchar](50) NULL,
	[strdrb41] [varchar](50) NULL,
	[strdrb42] [varchar](50) NULL,
	[strdrb51] [varchar](50) NULL,
	[strdrb52] [varchar](50) NULL,
	[strdqa11] [varchar](50) NULL,
	[strdqa12] [varchar](50) NULL,
	[strdqb11] [varchar](50) NULL,
	[strdqb12] [varchar](50) NULL,
	[strdpa11] [varchar](50) NULL,
	[strdpa12] [varchar](50) NULL,
	[strdpb11] [varchar](50) NULL,
	[strdpb12] [varchar](50) NULL,
	[strtypingmethod] [varchar](100) NULL,
	[cdwhoentered] [numeric](6, 0) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[strdr1] [varchar](50) NULL,
	[strdr2] [varchar](50) NULL,
	[strdq1] [varchar](50) NULL,
	[strdq2] [varchar](50) NULL,
 CONSTRAINT [PK_hla_type] PRIMARY KEY CLUSTERED 
(
	[pkpid] ASC,
	[pktypeseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_test]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_test](
	[pksid] [numeric](8, 0) NOT NULL,
	[pktestseq] [numeric](8, 0) NOT NULL,
	[fkpid] [numeric](8, 0) NOT NULL,
	[cdtestcode] [numeric](6, 0) NULL,
	[cdtesttype] [numeric](6, 0) NULL,
	[dtorderdate] [datetime] NULL,
	[dtresultdate] [datetime] NULL,
	[cdwhoresulted] [numeric](6, 0) NULL,
	[cdresultcode] [numeric](6, 0) NULL,
	[strresulttext] [varchar](2000) NULL,
	[strcomment] [varchar](2000) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[ynhlafinal] [varchar](50) NULL,
	[nbrturnarounddays] [numeric](3, 0) NULL,
 CONSTRAINT [PK_hla_test] PRIMARY KEY CLUSTERED 
(
	[pksid] ASC,
	[pktestseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [I_HLA_TEST_PID] ON [dbo].[hla_test] 
(
	[fkpid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [I_HLA_TEST_RESULT_DATE] ON [dbo].[hla_test] 
(
	[dtresultdate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hla_tabsections]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_tabsections](
	[pkwindow] [varchar](50) NOT NULL,
	[pkseq] [numeric](3, 0) NOT NULL,
	[strdisplayname] [varchar](50) NOT NULL,
	[strutabname] [varchar](50) NOT NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_tabsections] PRIMARY KEY CLUSTERED 
(
	[pkwindow] ASC,
	[pkseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_sysvalues]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_sysvalues](
	[pkid] [varchar](50) NOT NULL,
	[strvalue] [varchar](1000) NOT NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_sysvalues] PRIMARY KEY CLUSTERED 
(
	[pkid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_specimen]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_specimen](
	[pksid] [numeric](8, 0) NOT NULL,
	[fkpid] [numeric](8, 0) NOT NULL,
	[strspecimennum] [varchar](50) NOT NULL,
	[dtaccessiondate] [datetime] NULL,
	[dtbleeddate] [datetime] NULL,
	[strspecimentype] [varchar](150) NULL,
	[cdhospital] [numeric](6, 0) NULL,
	[strcomment] [varchar](2000) NULL,
	[cdwhoentered] [numeric](6, 0) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[cdnmdpcontract] [numeric](6, 0) NULL,
	[strmrn] [varchar](50) NULL,
 CONSTRAINT [PK_hla_specimen] PRIMARY KEY CLUSTERED 
(
	[pksid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [I_HLA_SPECIMEN_DTACCESSION] ON [dbo].[hla_specimen] 
(
	[dtaccessiondate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [I_HLA_SPECIMEN_FKPID] ON [dbo].[hla_specimen] 
(
	[pksid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [I_HLA_SPECIMEN_SPECIMENNUM] ON [dbo].[hla_specimen] 
(
	[strspecimennum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hla_session]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_session](
	[pksessionnumber] [numeric](9, 0) NOT NULL,
	[nbrdisplaynumber] [numeric](6, 0) NOT NULL,
	[strusername] [varchar](50) NOT NULL,
	[strsessiontype] [varchar](50) NOT NULL,
	[dtstarted] [datetime] NULL,
	[dtended] [datetime] NULL,
 CONSTRAINT [PK_hla_session] PRIMARY KEY CLUSTERED 
(
	[pksessionnumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_security]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_security](
	[pksecuredobjectname] [varchar](50) NOT NULL,
	[nbrSecurityLevel] [numeric](2, 0) NOT NULL,
	[strlogid] [varchar](50) NOT NULL,
	[dtrecordsecured] [datetime] NULL,
 CONSTRAINT [PK_hla_security] PRIMARY KEY CLUSTERED 
(
	[pksecuredobjectname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_sbt_outbox]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_sbt_outbox](
	[pklocus] [varchar](50) NOT NULL,
	[pkrefnum] [varchar](50) NOT NULL,
	[strnmdpid] [varchar](50) NULL,
 CONSTRAINT [PK_hla_sbt_outbox] PRIMARY KEY CLUSTERED 
(
	[pklocus] ASC,
	[pkrefnum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_rlog]    Script Date: 09/09/2012 17:15:10 ******/
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
/****** Object:  Table [dbo].[hla_result_list]    Script Date: 09/09/2012 17:15:10 ******/
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
/****** Object:  Table [dbo].[hla_report_item]    Script Date: 09/09/2012 17:15:10 ******/
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
/****** Object:  Table [dbo].[hla_report_hdr]    Script Date: 09/09/2012 17:15:10 ******/
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
/****** Object:  Table [dbo].[hla_report_comment]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_report_comment](
	[pkreportid] [numeric](8, 0) NOT NULL,
	[pkreportseq] [numeric](3, 0) NOT NULL,
	[pkdaterecordadded] [datetime] NOT NULL,
	[nbrcommentseq] [numeric](3, 0) NOT NULL,
	[dtcommentdate] [datetime] NOT NULL,
	[strcommenttext] [varchar](1000) NOT NULL,
	[ynnewitem] [char](1) NULL,
	[strwhoadded] [varchar](50) NULL,
	[fksid] [numeric](8, 0) NULL,
 CONSTRAINT [PK_hla_report_comment] PRIMARY KEY CLUSTERED 
(
	[pkreportid] ASC,
	[pkreportseq] ASC,
	[pkdaterecordadded] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_recent]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_recent](
	[pkuserdbname] [varchar](50) NOT NULL,
	[pkobjecttype] [varchar](50) NOT NULL,
	[pkobjectid] [numeric](8, 0) NOT NULL,
	[strdescription] [varchar](60) NOT NULL,
	[dtrecordused] [datetime] NULL,
 CONSTRAINT [PK_hla_recent] PRIMARY KEY CLUSTERED 
(
	[pkuserdbname] ASC,
	[pkobjecttype] ASC,
	[pkobjectid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_reading]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_reading](
	[pkrefnum] [varchar](50) NOT NULL,
	[pklocus] [varchar](50) NOT NULL,
	[pkag1] [varchar](200) NOT NULL,
	[pkag2] [varchar](200) NOT NULL,
	[strimportsource] [varchar](50) NULL,
	[strimportfilename] [varchar](60) NULL,
	[strprobes] [varchar](200) NULL,
	[strkitname] [varchar](50) NULL,
	[dtkitexpirationdate] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_reading] PRIMARY KEY CLUSTERED 
(
	[pkrefnum] ASC,
	[pklocus] ASC,
	[pkag1] ASC,
	[pkag2] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [I_HLA_READING_DATE] ON [dbo].[hla_reading] 
(
	[dtrecordmodified] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hla_qc_rnum]    Script Date: 09/09/2012 17:15:10 ******/
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
/****** Object:  Table [dbo].[hla_person]    Script Date: 09/09/2012 17:15:10 ******/
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
CREATE NONCLUSTERED INDEX [I_HLA_PERSON_CBU] ON [dbo].[hla_person] 
(
	[strcbuid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [I_HLA_PERSON_DONORLOCATION] ON [dbo].[hla_person] 
(
	[cddonorlocation] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [I_HLA_PERSON_NAME] ON [dbo].[hla_person] 
(
	[strlastname] ASC,
	[strfirstname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [I_HLA_PERSON_NMDP] ON [dbo].[hla_person] 
(
	[strnmdpid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [I_HLA_PERSON_REFNUM] ON [dbo].[hla_person] 
(
	[strrefnum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hla_panel_item]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_panel_item](
	[pkpanel] [numeric](6, 0) NOT NULL,
	[pkpanelitemseq] [numeric](3, 0) NOT NULL,
	[nbrrow] [numeric](2, 0) NOT NULL,
	[nbrcolumn] [numeric](2, 0) NOT NULL,
	[strwelllabel] [varchar](50) NOT NULL,
	[strcontents] [varchar](50) NULL,
	[strcontentstype] [varchar](50) NULL,
	[dtrecordcreated] [datetime] NULL,
	[fkpid] [numeric](8, 0) NULL,
	[fksid] [numeric](8, 0) NULL,
	[fktestseq] [numeric](3, 0) NULL,
	[strnmdpid] [varchar](50) NULL,
	[strlocus] [varchar](50) NULL,
 CONSTRAINT [PK_hla_panel_item] PRIMARY KEY CLUSTERED 
(
	[pkpanel] ASC,
	[pkpanelitemseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [I_HLA_PANEL_ITEM_CONTENTS] ON [dbo].[hla_panel_item] 
(
	[strcontents] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [I_HLA_PANEL_ITEM_FKPID] ON [dbo].[hla_panel_item] 
(
	[fkpid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hla_panel]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_panel](
	[pkpanel] [numeric](6, 0) NOT NULL,
	[strpaneltype] [varchar](50) NOT NULL,
	[strpanelname] [varchar](50) NOT NULL,
	[strwhocreated] [varchar](50) NULL,
	[dtrecordcreated] [datetime] NULL,
	[flgclosed] [numeric](1, 0) NULL,
	[dtprinted] [datetime] NULL,
 CONSTRAINT [PK_hla_panel] PRIMARY KEY CLUSTERED 
(
	[pkpanel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_packinglist_item]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_packinglist_item](
	[pkpackinglist] [numeric](8, 0) NOT NULL,
	[pkpackinglistitemseq] [numeric](8, 0) NOT NULL,
	[strboxslotlocation] [varchar](50) NOT NULL,
	[strnmdpid] [varchar](50) NULL,
	[strcategory] [varchar](50) NULL,
	[nbrturnarounddays] [numeric](2, 0) NULL,
	[strdonorcenter] [varchar](50) NULL,
	[strsampletype] [varchar](50) NULL,
	[strtestlist] [varchar](100) NULL,
	[ynhighresrequest] [char](1) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[strloginrefnum] [varchar](50) NULL,
	[strlastname] [varchar](50) NULL,
	[strfirstname] [varchar](50) NULL,
	[strmrn] [varchar](50) NULL,
 CONSTRAINT [PK_hla_packinglist_item] PRIMARY KEY CLUSTERED 
(
	[pkpackinglist] ASC,
	[pkpackinglistitemseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [I_HLA_PACKINGLIST_ITEM_NMDP] ON [dbo].[hla_packinglist_item] 
(
	[strnmdpid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hla_packinglist]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_packinglist](
	[pkpackinglist] [numeric](8, 0) NOT NULL,
	[strlocalname] [varchar](50) NOT NULL,
	[strnmdpname] [varchar](50) NOT NULL,
	[dtrequested] [datetime] NOT NULL,
	[cdwhoentered] [numeric](6, 0) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_packinglist] PRIMARY KEY CLUSTERED 
(
	[pkpackinglist] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [I_HLA_PACKINGLIST_NAME] ON [dbo].[hla_packinglist] 
(
	[strlocalname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hla_login_templatefield]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_login_templatefield](
	[pklogintemplate] [numeric](4, 0) NOT NULL,
	[pklogintemplateseq] [numeric](2, 0) NOT NULL,
	[strdisplayname] [varchar](50) NOT NULL,
	[ynused] [char](1) NULL,
	[ynrequired] [char](1) NULL,
	[strdatatype] [varchar](50) NULL,
	[strcodetype] [varchar](50) NULL,
	[nbrdefaultcodevalue] [numeric](4, 0) NULL,
	[strdefaulttextvalue] [varchar](250) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[ynlocked] [char](1) NULL,
 CONSTRAINT [PK_hla_login_templatefield] PRIMARY KEY CLUSTERED 
(
	[pklogintemplate] ASC,
	[pklogintemplateseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_lock]    Script Date: 09/09/2012 17:15:10 ******/
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
CREATE NONCLUSTERED INDEX [date_hla_lock] ON [dbo].[hla_lock] 
(
	[pkLockedObjectname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'HLA Object Locks' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'hla_lock'
GO
/****** Object:  Table [dbo].[hla_inventory]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_inventory](
	[pkinventory] [numeric](8, 0) NOT NULL,
	[fksid] [numeric](8, 0) NOT NULL,
	[fkpid] [numeric](8, 0) NOT NULL,
	[fkbox] [numeric](6, 0) NOT NULL,
	[nbritemsstored] [numeric](4, 0) NOT NULL,
	[nbritemspendingadd] [numeric](4, 0) NOT NULL,
	[strcontents] [varchar](50) NOT NULL,
	[ynsterile] [char](1) NULL,
	[strinventorycomment] [varchar](250) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_inventory] PRIMARY KEY CLUSTERED 
(
	[pkinventory] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [I_HLA_INVENTORY_BOX] ON [dbo].[hla_inventory] 
(
	[fkbox] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [I_HLA_INVENTORY_DATE] ON [dbo].[hla_inventory] 
(
	[dtrecordmodified] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [I_HLA_INVENTORY_PID] ON [dbo].[hla_inventory] 
(
	[fkpid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [I_HLA_INVENTORY_SID] ON [dbo].[hla_inventory] 
(
	[fksid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hla_import_file]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_import_file](
	[pkimportfilename] [varchar](60) NOT NULL,
	[pkimportdatetime] [datetime] NOT NULL,
	[strimporttype] [varchar](50) NOT NULL,
	[strimportstatus] [varchar](50) NULL,
 CONSTRAINT [PK_hla_import_file] PRIMARY KEY CLUSTERED 
(
	[pkimportfilename] ASC,
	[pkimportdatetime] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_expected_typing]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_expected_typing](
	[pknmdpid] [varchar](50) NOT NULL,
	[dtshipped] [datetime] NULL,
	[dtlastprinted] [datetime] NULL,
	[stra1] [varchar](50) NULL,
	[stra2] [varchar](50) NULL,
	[strb1] [varchar](50) NULL,
	[strb2] [varchar](50) NULL,
	[strc1] [varchar](50) NULL,
	[strc2] [varchar](50) NULL,
	[strdrb11] [varchar](50) NULL,
	[strdrb12] [varchar](50) NULL,
	[strdrb31] [varchar](50) NULL,
	[strdrb32] [varchar](50) NULL,
	[strdrb41] [varchar](50) NULL,
	[strdrb42] [varchar](50) NULL,
	[strdrb51] [varchar](50) NULL,
	[strdrb52] [varchar](50) NULL,
	[strdqb11] [varchar](50) NULL,
	[strdqb12] [varchar](50) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[strdpb11] [varchar](50) NULL,
	[strdpb12] [varchar](50) NULL,
 CONSTRAINT [PK_hla_expected_typing] PRIMARY KEY CLUSTERED 
(
	[pknmdpid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_contact]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_contact](
	[pkprovidername] [varchar](60) NOT NULL,
	[pkhospitalname] [varchar](100) NOT NULL,
	[flgdeleted] [int] NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_contact] PRIMARY KEY CLUSTERED 
(
	[pkprovidername] ASC,
	[pkhospitalname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_code_extras]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_code_extras](
	[pkcodetype] [varchar](50) NOT NULL,
	[pkcodenumber] [numeric](8, 0) NOT NULL,
	[pkname] [varchar](50) NOT NULL,
	[pkvalueseq] [numeric](3, 0) NOT NULL,
	[strvaluename] [varchar](100) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_code_extras] PRIMARY KEY CLUSTERED 
(
	[pkcodetype] ASC,
	[pkcodenumber] ASC,
	[pkname] ASC,
	[pkvalueseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_code]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_code](
	[pkcodetype] [varchar](50) NOT NULL,
	[pkcodenumber] [numeric](8, 0) NOT NULL,
	[strcodename] [varchar](100) NOT NULL,
	[strcodeshortname] [varchar](50) NULL,
	[flgdeleted] [numeric](1, 0) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_code] PRIMARY KEY CLUSTERED 
(
	[pkcodetype] ASC,
	[pkcodenumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_canned_comment]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_canned_comment](
	[pkcannedabbr] [varchar](50) NOT NULL,
	[strcannedcomment] [varchar](1000) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
 CONSTRAINT [PK_hla_canned_comment] PRIMARY KEY CLUSTERED 
(
	[pkcannedabbr] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_box]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_box](
	[pkbox] [numeric](8, 0) NOT NULL,
	[strboxname] [varchar](50) NOT NULL,
	[nbrstack] [numeric](6, 0) NOT NULL,
	[strlabelinstack] [varchar](50) NOT NULL,
	[nbrmaxitems] [numeric](4, 0) NOT NULL,
	[strcontentsofbox] [varchar](50) NULL,
	[strdescription] [varchar](200) NULL,
	[strlocation] [varchar](100) NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecordmodified] [datetime] NULL,
	[flgdeleted] [numeric](1, 0) NULL,
 CONSTRAINT [PK_hla_box] PRIMARY KEY CLUSTERED 
(
	[pkbox] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_batch_item]    Script Date: 09/09/2012 17:15:10 ******/
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
/****** Object:  Table [dbo].[hla_batch_hdr]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_batch_hdr](
	[pkbatchtype] [varchar](50) NOT NULL,
	[pkbatchnumber] [numeric](6, 0) NOT NULL,
	[strrunstatus] [varchar](50) NOT NULL,
	[cdnmdpcontract] [numeric](5, 0) NULL,
	[strwhocreated] [varchar](50) NULL,
	[dtcreatedate] [datetime] NULL,
	[dtupdateddate] [datetime] NULL,
 CONSTRAINT [PK_hla_batch_hdr] PRIMARY KEY CLUSTERED 
(
	[pkbatchtype] ASC,
	[pkbatchnumber] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [i_hla_batch_hdr_dtcreatedate] ON [dbo].[hla_batch_hdr] 
(
	[dtcreatedate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hla_audit]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_audit](
	[pkauditseq] [numeric](8, 0) NOT NULL,
	[strrefnum] [varchar](50) NULL,
	[strauditactivity] [varchar](50) NULL,
	[strtablename] [varchar](50) NULL,
	[strrecordidentifier] [varchar](50) NULL,
	[strfieldname] [varchar](50) NULL,
	[stroldvalue] [varchar](250) NULL,
	[strnewvalue] [varchar](250) NULL,
	[strwhomadechange] [varchar](50) NULL,
	[dtchanged] [datetime] NULL,
 CONSTRAINT [PK_hla_audit] PRIMARY KEY CLUSTERED 
(
	[pkauditseq] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [i_hla_audit_refnum] ON [dbo].[hla_audit] 
(
	[strrefnum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hla_antigen_ambiguity]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_antigen_ambiguity](
	[pkantigenname] [varchar](50) NOT NULL,
	[pkeffectivedate] [datetime] NOT NULL,
	[strambiguitystring] [varchar](100) NOT NULL,
	[strcodedambiguity] [varchar](50) NULL,
 CONSTRAINT [PK_hla_antigen_ambiguity] PRIMARY KEY CLUSTERED 
(
	[pkantigenname] ASC,
	[pkeffectivedate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[hla_antigen]    Script Date: 09/09/2012 17:15:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hla_antigen](
	[pkantigenname] [varchar](50) NOT NULL,
	[flgdeleted] [int] NOT NULL,
	[dtrecordcreated] [datetime] NULL,
	[dtrecorddeleted] [datetime] NULL,
	[flghighresantigen] [int] NULL,
	[strseroequivalent] [varchar](50) NULL,
	[strambiguitystring] [varchar](100) NULL,
	[strcrantigens] [varchar](100) NULL,
	[strname2010] [varchar](50) NULL,
 CONSTRAINT [PK_hla_antigen] PRIMARY KEY CLUSTERED 
(
	[pkantigenname] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_hla_worksheet_flgdeleted]    Script Date: 09/09/2012 17:15:10 ******/
ALTER TABLE [dbo].[hla_worksheet] ADD  CONSTRAINT [DF_hla_worksheet_flgdeleted]  DEFAULT ((0)) FOR [flgdeleted]
GO
/****** Object:  Default [DF_hla_report_hdr_delflag]    Script Date: 09/09/2012 17:15:10 ******/
ALTER TABLE [dbo].[hla_report_hdr] ADD  CONSTRAINT [DF_hla_report_hdr_delflag]  DEFAULT ((0)) FOR [delflag]
GO
/****** Object:  Default [DF_hla_person_flgdeleted]    Script Date: 09/09/2012 17:15:10 ******/
ALTER TABLE [dbo].[hla_person] ADD  CONSTRAINT [DF_hla_person_flgdeleted]  DEFAULT ((0)) FOR [flgdeleted]
GO
/****** Object:  Default [DF_hla_antigen_flgdeleted]    Script Date: 09/09/2012 17:15:10 ******/
ALTER TABLE [dbo].[hla_antigen] ADD  CONSTRAINT [DF_hla_antigen_flgdeleted]  DEFAULT ((0)) FOR [flgdeleted]
GO
/****** Object:  Default [DF_hla_antigen_flghighresantigen]    Script Date: 09/09/2012 17:15:10 ******/
ALTER TABLE [dbo].[hla_antigen] ADD  CONSTRAINT [DF_hla_antigen_flghighresantigen]  DEFAULT ((0)) FOR [flghighresantigen]
GO
