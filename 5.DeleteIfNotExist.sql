DELETE tblCom FROM tblCompanion tblCom  
LEFT JOIN tblEpisodeCompanion ON tblCom.CompanionId = tblEpisodeCompanion.CompanionId   
WHERE tblEpisodeCompanion.CompanionId IS NULL;  