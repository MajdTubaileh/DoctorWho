UPDATE tblEpisode
SET Title = CONCAT(Title,'_CANCELLED')
WHERE tblEpisode.DoctorId = 0;