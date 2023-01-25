DROP PROCEDURE IF EXISTS spSummariseEpisodes;
GO
CREATE PROCEDURE spSummariseEpisodes (@Ep_IDC INT,@Ep_IDE int)
AS BEGIN
  	SELECT c.CompanionName AS [Top 3 Companions]
	FROM tblEpisodeCompanion ec
		 JOIN tblCompanion c ON ec.CompanionId = c.CompanionId
    WHERE ec.EpisodeId = @Ep_IDC
	GROUP BY ec.CompanionId, c.CompanionName
	ORDER BY COUNT(ec.CompanionId) DESC
	OFFSET 0 ROWS
	FETCH NEXT 3 ROWS ONLY;

	SELECT e.EnemyName AS [Top 3 Enemies]
	FROM tblEpisodeEnemy ee
		 JOIN tblEnemy e ON ee.EnemyId = e.EnemyId
    WHERE ee.EpisodeId = @Ep_IDE
	GROUP BY ee.EnemyId, e.EnemyName
	ORDER BY COUNT(ee.EnemyId) DESC
	OFFSET 0 ROWS
	FETCH NEXT 3 ROWS ONLY;
 
END;

GO
EXEC spSummariseEpisodes 015,055;