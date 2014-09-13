CREATE PROCEDURE sp_GetSequence
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
GO