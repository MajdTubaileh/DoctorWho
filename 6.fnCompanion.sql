IF OBJECT_ID ('dbo.fnCompanion') IS NOT NULL
    DROP FUNCTION fnCompanion;
	GO
CREATE FUNCTION dbo.fnCompanion(@EpID int)
RETURNS TABLE AS
  
  RETURN (

select STRING_AGG (CompanionName, ', ') AS RESULT from (
SELECT DISTINCT  c.CompanionName as CompanionName 
  FROM tblCompanion as e
INNER JOIN tblEpisodeCompanion as ec ON ec.EpisodeId = @EpID
INNER JOIN tblCompanion as c ON ec.CompanionId = c.CompanionId
) as t 
)
GO
SELECT DISTINCT * from dbo.fnCompanion(015);

GO

