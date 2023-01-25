CREATE TABLE tblDoctor
(
DoctorId INT NOT NULL,
DoctorNumber INT,
DoctorName CHAR(20),
BirthDate DATE,
FirstEpisodeDate DATE,
LastEpisodeDate DATE,

PRIMARY KEY (DoctorId),
)



CREATE TABLE tblAuthor
(
AuthorId INT NOT NULL,
AuthorName CHAR(20),

PRIMARY KEY (AuthorId)



)

CREATE TABLE tblCompanion
(
CompanionId INT NOT NULL,
CompanionName CHAR(20),
WhoPlayed CHAR(20),

PRIMARY KEY (CompanionId)
)

CREATE TABLE tblEnemy
(
EnemyId INT NOT NULL,
EnemyName CHAR(20),
Descreption NVARCHAR(100),

PRIMARY KEY (EnemyId)

)




CREATE TABLE tblEpisode
(
EpisodeId INT NOT NULL,
SeriesNumber INT,
EpisodeNumber INT,
EpisodeType CHAR(20),
Title NVARCHAR(50),
EpisodeDate DATE,
AuthorId INT,
DoctorId INT,
Notes NVARCHAR(100),

PRIMARY KEY (EpisodeId),
FOREIGN KEY (DoctorId) REFERENCES tblDoctor(DoctorId),
FOREIGN KEY (AuthorId) REFERENCES tblAuthor(AuthorId)
);


CREATE TABLE tblEpisodeCompanion
(

EpisodeCompanionId INT NOT NULL,
EpisodeId INT,
CompanionId INT,

PRIMARY KEY (EpisodeCompanionId),
FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId),
FOREIGN KEY (CompanionId) REFERENCES tblCompanion(CompanionId)

)

CREATE TABLE tblEpisodeEnemy
(
EpisodeEnemyId INT NOT NULL,
EpisodeId INT,
EnemyId INT,

PRIMARY KEY(EpisodeEnemyId),
FOREIGN KEY (EpisodeId) REFERENCES tblEpisode(EpisodeId),
FOREIGN KEY (EnemyId) REFERENCES tblEnemy(EnemyId)


)