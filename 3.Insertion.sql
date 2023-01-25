INSERT INTO tblEnemy (EnemyId , EnemyName ,Descreption)
  VALUES (011, 'Majd', 'bot');
  GO
  INSERT INTO tblEnemy (EnemyId , EnemyName ,Descreption)
  VALUES (021, 'AbuSalah', 'bot');
  GO
  INSERT INTO tblEnemy (EnemyId , EnemyName ,Descreption)
  VALUES (031, 'Smadi', 'bot');
  GO
  INSERT INTO tblEnemy (EnemyId , EnemyName ,Descreption)
  VALUES (041, 'Smadi', 'bot');
  GO
  INSERT INTO tblEnemy (EnemyId , EnemyName ,Descreption)
  VALUES (051, 'Randa', 'bot');
  GO
  INSERT INTO tblEnemy (EnemyId , EnemyName ,Descreption)
  VALUES (061, 'Majdii', 'bot');
  GO

  --Insertion into the Enemy table.
  GO

  INSERT INTO tblAuthor(AuthorId ,AuthorName )
  VALUES (012, 'Sudqi');
  GO
  INSERT INTO tblAuthor(AuthorId ,AuthorName )
  VALUES (022, 'Waleed');
  GO
  INSERT INTO tblAuthor(AuthorId ,AuthorName )
  VALUES (032, 'Jacob');
  GO
  INSERT INTO tblAuthor(AuthorId ,AuthorName )
  VALUES (042, 'Randi');
  GO
  INSERT INTO tblAuthor(AuthorId ,AuthorName )
  VALUES (052, 'Morti');
  --Insertion into the Author table.
GO



  INSERT INTO tblDoctor(DoctorId ,DoctorName,BirthDate,FirstEpisodeDate,LastEpisodeDate )
  VALUES (013, 'Sudqi','2000-12-10','2005-1-1','2005-12-31');
  GO
  INSERT INTO tblDoctor(DoctorId ,DoctorName,BirthDate,FirstEpisodeDate,LastEpisodeDate )
  VALUES (023, 'Ahmad','2000-12-10','2005-1-1','2005-12-31');
  GO
  INSERT INTO tblDoctor(DoctorId ,DoctorName,BirthDate,FirstEpisodeDate,LastEpisodeDate )
  VALUES (033, 'Khalid','2000-12-10','2005-1-1','2005-12-31');
  GO
  INSERT INTO tblDoctor(DoctorId ,DoctorName,BirthDate,FirstEpisodeDate,LastEpisodeDate )
  VALUES (043, 'Amir','2000-12-10','2005-1-1','2005-12-31');
  GO
  INSERT INTO tblDoctor(DoctorId ,DoctorName,BirthDate,FirstEpisodeDate,LastEpisodeDate )
  VALUES (053, 'Daemon','2000-12-10','2005-1-1','2005-12-31');
  --Insertion into the Doctor table.
  GO



    INSERT INTO tblCompanion(CompanionId,CompanionName,WhoPlayed)
  VALUES (014,'Saed','Amjad');
  GO
    INSERT INTO tblCompanion(CompanionId,CompanionName,WhoPlayed)
  VALUES (024,'Ahmad','Asim');
    GO
    INSERT INTO tblCompanion(CompanionId,CompanionName,WhoPlayed)
  VALUES (034,'Waad','Sara');
    GO
    INSERT INTO tblCompanion(CompanionId,CompanionName,WhoPlayed)
  VALUES (044,'Karam','Ragnar');
    GO
    INSERT INTO tblCompanion(CompanionId,CompanionName,WhoPlayed)
  VALUES (054,'Sondos','Zee');

      INSERT INTO tblCompanion(CompanionId,CompanionName,WhoPlayed)
  VALUES (064,'Test','Test1');
  GO
        INSERT INTO tblCompanion(CompanionId,CompanionName,WhoPlayed)
  VALUES (074,'Test2','Test2');

          INSERT INTO tblCompanion(CompanionId,CompanionName,WhoPlayed)
  VALUES (084,'Test3','Test3');

  --Insertion into the Companion table.
  GO

      INSERT INTO tblEpisode(EpisodeId,SeriesNumber,EpisodeNumber,EpisodeType,Title,EpisodeDate,AuthorId,DoctorId,Notes)
  VALUES (015,000001,000111,'Action','StartOfTheEnd','2000-12-10',012,013,'none');
  GO
      INSERT INTO tblEpisode(EpisodeId,SeriesNumber,EpisodeNumber,EpisodeType,Title,EpisodeDate,AuthorId,DoctorId,Notes)
  VALUES (025,000001,000222,'Action','End','2000-12-10',022,023,'none');
    GO
      INSERT INTO tblEpisode(EpisodeId,SeriesNumber,EpisodeNumber,EpisodeType,Title,EpisodeDate,AuthorId,DoctorId,Notes)
  VALUES (035,000001,000333,'Action','StartOfTheEnd','2000-12-10',032,033,'none');
    GO
      INSERT INTO tblEpisode(EpisodeId,SeriesNumber,EpisodeNumber,EpisodeType,Title,EpisodeDate,AuthorId,DoctorId,Notes)
  VALUES (045,000001,000444,'Action','StartOfTheEnd','2000-12-10',042,043,'none');
    GO
      INSERT INTO tblEpisode(EpisodeId,SeriesNumber,EpisodeNumber,EpisodeType,Title,EpisodeDate,AuthorId,DoctorId,Notes)
  VALUES (055,000001,000555,'Action','StartOfTheEnd','2000-12-10',052,053,'none');
  GO

  --Insertion into Episode table.
    GO

	 INSERT INTO tblEpisodeCompanion(EpisodeCompanionId,EpisodeId,CompanionId)
  VALUES (016,015,014);
  GO
  	 INSERT INTO tblEpisodeCompanion(EpisodeCompanionId,EpisodeId,CompanionId)
  VALUES (026,025,024);
  GO
  	 INSERT INTO tblEpisodeCompanion(EpisodeCompanionId,EpisodeId,CompanionId)
  VALUES (036,035,034);
  GO
  	 INSERT INTO tblEpisodeCompanion(EpisodeCompanionId,EpisodeId,CompanionId)
  VALUES (046,045,044);
  GO
  	 INSERT INTO tblEpisodeCompanion(EpisodeCompanionId,EpisodeId,CompanionId)
  VALUES (056,055,054);
  GO
    	 INSERT INTO tblEpisodeCompanion(EpisodeCompanionId,EpisodeId,CompanionId)
  VALUES (066,015,074);

      	 INSERT INTO tblEpisodeCompanion(EpisodeCompanionId,EpisodeId,CompanionId)
  VALUES (076,015,084);
  GO


  --Insertion into the EpisodeCompanion table.
  GO

  	 INSERT INTO tblEpisodeEnemy(EpisodeEnemyId,EpisodeId,EnemyId)
  VALUES (017,015,011);
  GO
  	 INSERT INTO tblEpisodeEnemy(EpisodeEnemyId,EpisodeId,EnemyId)
  VALUES (027,025,021);
  GO
  	 INSERT INTO tblEpisodeEnemy(EpisodeEnemyId,EpisodeId,EnemyId)
  VALUES (037,035,031);
  GO
  	 INSERT INTO tblEpisodeEnemy(EpisodeEnemyId,EpisodeId,EnemyId)
  VALUES (047,045,041);
  GO
  	 INSERT INTO tblEpisodeEnemy(EpisodeEnemyId,EpisodeId,EnemyId)
  VALUES (057,055,051);
  GO
   	 INSERT INTO tblEpisodeEnemy(EpisodeEnemyId,EpisodeId,EnemyId)
  VALUES (067,055,061);
