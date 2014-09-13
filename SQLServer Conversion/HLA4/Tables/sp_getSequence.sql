USE [hla]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetSequence]    Script Date: 09/09/2012 21:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetSequence]
@sequence_name varchar(100)
AS
BEGIN
DECLARE @sequence_num INTEGER
SET @sequence_num = -1

UPDATE sequence_master
SET @sequence_num = sequence_num = sequence_num + 1
WHERE sequence_name = @sequence_name

RETURN @sequence_num
END