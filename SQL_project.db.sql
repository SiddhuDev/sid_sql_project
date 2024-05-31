BEGIN TRANSACTION;
DROP TABLE IF EXISTS "dramas";
CREATE TABLE IF NOT EXISTS "dramas" (
	"Id_no"	INTEGER NOT NULL,
	"name"	TEXT NOT NULL,
	"genere"	TEXT,
	"country"	TEXT NOT NULL,
	"aired_on_(year)"	INTEGER,
	PRIMARY KEY("Id_no" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "platform";
CREATE TABLE IF NOT EXISTS "platform" (
	"S.No"	INTEGER NOT NULL,
	"Name"	varchar(250) NOT NULL,
	"mode"	TEXT NOT NULL,
	PRIMARY KEY("S.No" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "user_details";
CREATE TABLE IF NOT EXISTS "user_details" (
	"Id.no"	INTEGER NOT NULL,
	"name"	varchar(250) NOT NULL,
	"age"	INTEGER NOT NULL,
	"country"	TEXT,
	"drames_seen"	TEXT NOT NULL,
	PRIMARY KEY("Id.no" AUTOINCREMENT)
);
INSERT INTO "dramas" ("Id_no","name","genere","country","aired_on_(year)") VALUES (1,'Goblin','Romance','South Korea',2016),
 (2,'Go Ahead','Family','China',2020),
 (3,'The Warp Effect','Comedy','Thailand',2022),
 (4,'Naruto','Anime','Japan',2002),
 (5,'The Eclipse','Boys Love','Thailand',2022),
 (6,'Welcome to Waikkiki','Comedy','South Korea',2018),
 (7,'Wonderland of Love','Costume','China',2023),
 (8,'Candy Color Paradox','Youth','Japan',2022);
INSERT INTO "platform" ("S.No","Name","mode") VALUES (1,'Youtube','online'),
 (2,'Telegram','offline'),
 (3,'HiTV','both');
INSERT INTO "user_details" ("Id.no","name","age","country","drames_seen") VALUES (1,'Saarah Wen',20,'South Korea','Goblin'),
 (2,'Sid Dev',21,'Thailand','The Warp Effect'),
 (3,'Alan Haree',22,'Japan','Naruto'),
 (4,'Chandler Nyth',23,'England','Go Ahead'),
 (5,'Vishwa Ranji',24,'India','Welcome to Waikkiki'),
 (6,'Gool Narya',19,'Taiwan','The Eclipse'),
 (7,'Thanu Nyth',22,'England','Woderland of Love'),
 (8,'Sadhur Gan',25,'Japan','Candy Color Paradox'),
 (9,'Kuppi Bahr',24,'India','Go Ahead'),
 (10,'Sai Nalluri',23,'South Korea','Goblin');
COMMIT;
