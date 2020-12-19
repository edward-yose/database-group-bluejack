-- GROUP ID : 504301df-4b18-eb11-90f0-d8d385fce79e
--1	2301878076	Maryanto
--2	2301877470	Edward Yose
--3	2301910026	Benedictus Visto Kartika
--4	2301885983	Vincent Fanditama Wijaya

-- SOAL BAGIAN B : Query to create the database system

CREATE database BakMovie
USE bakmovie


CREATE TABLE [User]
(
	ID CHAR(6) PRIMARY KEY NOT NULL CHECK (ID LIKE 'USR[0-9][0-9][0-9]'),
	Nickname VARCHAR(255) NOT NULL CHECK (LEN(Nickname)>5),
	Fullname VARCHAR (255) NOT NULL,
	Email VARCHAR(255) NOT NULL CHECK (Email LIKE '%@%'),
	City VARCHAR(255) NOT NULL,
	[Description] VARCHAR(255) NOT NULL 
);

CREATE TABLE [SalesTransaction]
(
	ID CHAR(6) PRIMARY KEY NOT NULL CHECK (ID LIKE 'SAL[0-9][0-9][0-9]'),
	UserID CHAR (6) FOREIGN KEY REFERENCES [User](ID),
	TransactionDate DATE NOT NULL
);


CREATE TABLE [SalesToMovie]
(
	SalesTransactionID CHAR(6) NOT NULL,
	MovieID CHAR(6) NOT NULL,
	Quantity INTEGER NOT NULL
	PRIMARY KEY (SalesTransactionID, MovieID),
	FOREIGN KEY (SalesTransactionID) REFERENCES [SalesTransaction](ID),
	FOREIGN KEY (MovieID) REFERENCES [MOVIE](ID)
);

CREATE TABLE [Movie]
(
	ID CHAR(6) PRIMARY KEY NOT NULL CHECK (ID LIKE 'MOV[0-9][0-9][0-9]'),
	DirectorID CHAR (6) FOREIGN KEY REFERENCES Director(ID),
	PublisherID CHAR (6) FOREIGN KEY REFERENCES Publisher(ID),
	Title VARCHAR(255) NOT NULL,
	[Description] VARCHAR (255) NOT NULL CHECK (LEN([DESCRIPTION])>20),
	[ReleaseDate] DATE NOT NULL CHECK (CAST(YEAR([ReleaseDate]) AS INTEGER) BETWEEN 2000 AND 2016),
	Price NUMERIC (15,0) NOT NULL
);

CREATE TABLE [Director]
(
	ID CHAR(6) PRIMARY KEY NOT NULL CHECK (ID LIKE 'DIR[0-9][0-9][0-9]'),
	[Name] VARCHAR (255) NOT NULL,
	[Email] VARCHAR(255) NOT NULL CHECK([Email] LIKE '%@%'),
	City VARCHAR(255) NOT NULL,
	[Address] VARCHAR(225) NOT NULL,
	Phone NUMERIC NOT NULL
);

CREATE TABLE [Publisher]
(
	ID CHAR(6) PRIMARY KEY NOT NULL CHECK (ID LIKE 'PUB[0-9][0-9][0-9]'),
	[Name] VARCHAR (255) NOT NULL,
	[Email] VARCHAR(255) NOT NULL,
	City VARCHAR(255) NOT NULL,
	[Address] VARCHAR(225) NOT NULL CHECK (LEN([Address])>15),
	Phone NUMERIC NOT NULL	
);

CREATE TABLE [Genre]
(
	ID CHAR(6) PRIMARY KEY NOT NULL CHECK (ID LIKE 'GEN[0-9][0-9][0-9]'),
	[Name] VARCHAR (255) NOT NULL
);

CREATE TABLE [MovieToGenre]
(
	MovieID CHAR (6) NOT NULL,
	GenreID CHAR (6) NOT NULL,
	PRIMARY KEY (MovieID, GenreID),
	FOREIGN KEY (MovieID) REFERENCES Movie(ID),
	FOREIGN KEY (GenreID) REFERENCES Genre(ID)
);


CREATE TABLE [Review]
(
	UserID CHAR (6) NOT NULL,
	MovieID CHAR (6) NOT NULL,
	RecommendStatus VARCHAR (255) NOT NULL,
	Content VARCHAR (255) NOT NULL CHECK (LEN(Content)>20),
	[Date] DATE NOT NULL,
	PRIMARY KEY (UserID, MovieID),
	FOREIGN KEY (UserID) REFERENCES [User] (ID),
	FOREIGN KEY (MovieID) REFERENCES Movie (ID)
);


