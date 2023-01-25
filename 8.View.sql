USE master
GO
DROP VIEW IF EXISTS viewEpisodes;
GO
CREATE VIEW 
 viewEpisodes AS
SELECT 
	   V_Epi.EpisodeNumber AS EpisodeNumber, 
	   V_Epi.Title AS Title, 
	   Auth.AuthorName AS AuthorName, 
	   Doc.DoctorName AS DoctorName,
	   ec.result AS Companions,
	   ee.result As Enemies

FROM tblEpisode V_Epi
	 INNER JOIN tblAuthor Auth ON V_Epi.AuthorId = Auth.AuthorId
	 INNER JOIN tblDoctor Doc ON V_Epi.DoctorId = Doc.DoctorId 
	 join dbo.fnCompanion(V_Epi.EpisodeId) as ec on 1 =1 
	  join dbo.fnEnemy(055) as ee on 1 =1 
GO

select * from viewEpisodes

