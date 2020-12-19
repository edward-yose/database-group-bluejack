-- GROUP ID : 504301df-4b18-eb11-90f0-d8d385fce79e
--1	2301878076	Maryanto
--2	2301877470	Edward Yose
--3	2301910026	Benedictus Visto Kartika
--4	2301885983	Vincent Fanditama Wijaya

-- SOAL BAGIAN D : Query to simulate the transactions processes

USE BakMovie

INSERT INTO [SalesTransaction] 
	(ID, UserID, TransactionDate)
VALUES
	(	
		'SAL'+ 
		RIGHT(1001+(
			SELECT 
				COUNT(*) 
			FROM 
				SalesTransaction
		), 3),
		'USR007',
		GETDATE()
	)

INSERT INTO [Review]
	(UserID, MovieID, RecommendStatus, Content, [Date])
VALUES
	('USR007', 'MOV003', 'Recommended', 'it is very good to watch this movie, their horror scene were terrific', GETDATE())
