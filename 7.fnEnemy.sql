IF OBJECT_ID ('dbo.fnEnemy') IS NOT NULL
    DROP FUNCTION fnEnemy;
	GO
CREATE FUNCTION dbo.fnEnemy(@EpID int)
RETURNS TABLE AS
  
  RETURN (

select STRING_AGG (EnemyName, ', ') AS RESULT from (
SELECT DISTINCT  EnemyName as EnemyName 
  FROM tblEpisode as e
INNER JOIN tblEpisodeEnemy as ec ON ec.EpisodeId = @EpID
INNER JOIN tblEnemy as c ON ec.EnemyId = c.EnemyId
) as t 
)
GO
SELECT DISTINCT * from dbo.fnEnemy(055);

GO



