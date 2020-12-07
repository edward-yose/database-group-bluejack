USE master
GO

USE BakMovie
GO

-- 1
SELECT
	[MovieID] = Movie.ID,
	[MovieTitle] = Movie.Title,
	[MovieDescription] = Movie.[Description],
	[Reviews Movie] = CAST(COUNT(Movie.ID) AS VARCHAR) + ' review(s)'
FROM
	Movie, 
	Review, 
	[User]
WHERE
	[User].ID = Review.UserID AND
	Movie.ID = Review.MovieID AND
	(Review.RecommendStatus = 'Not Recommended' OR [User].City = 'Bandung')
GROUP BY
	Movie.ID,
	Movie.[Description],
	Movie.[Title]

-- 2
SELECT
	[GenreID] = Genre.ID,
	[GenreName] = Genre.[Name],
	[Total Movie] = COUNT(MovieToGenre.MovieID)
FROM
	Genre,
	MovieToGenre,
	Movie
WHERE
	Genre.ID = MovieToGenre.GenreID AND
	MovieToGenre.MovieID = Movie.ID AND
	Movie.DirectorID BETWEEN 'DIR004' AND 'DIR008' AND
	MONTH(Movie.ReleaseDate) = 2
GROUP BY
	Genre.ID,
	Genre.[Name]

-- 3
SELECT
	[DirectorID] = Director.ID,
	[DirectorName] = Director.[Name],
	[Local Phone] = ('+62' + RIGHT(CAST(phone AS VARCHAR), LEN(phone))),
	[Movie Sold] = SUM(SalesToMovie.Quantity),
	[Total Transaction] = COUNT(SalesTransaction.ID)
FROM
	SalesTransaction,
	Director,
	SalestoMovie, 
	Movie
WHERE
	SalesTransaction.ID = SalestoMovie.SalesTransactionID AND
	SalestoMovie.MovieID = Movie.ID AND
	Director.ID = Movie.DirectorID AND
	Director.ID BETWEEN 'DIR003' AND 'DIR009'
GROUP BY
	Director.ID,
	Director.[Name],
	Director.Phone,
	Movie.ID
HAVING
	SUM(SalesToMovie.Quantity) > 20

-- 4
SELECT
	[UserNickname] = [User].Nickname,
	[User City] = UPPER([User].City),
	[Total Movie Purchased] = SUM(SalesToMovie.Quantity),
	[Movie Owned] = COUNT(SalesToMovie.MovieID)
FROM
	[User],
	SalesTransaction,
	SalesToMovie,
	Movie
WHERE
	[User].ID = SalesTransaction.UserID AND
	SalesTransaction.ID = SalesToMovie.SalesTransactionID AND
	SalesToMovie.MovieID = Movie.ID AND
	[User].ID IN ('USR002', 'USR003') AND
	MONTH(Movie.ReleaseDate) IN (1, 3, 5, 7, 9, 11)
GROUP BY
	[User].Nickname,
	[User].City

-- 5
SELECT
	[Numeric User ID] = RIGHT(U.ID, 3),
	[UserNickname] = UPPER(U.Nickname),
	Usercity = U.City
FROM
	[User] U,
	SalesTransaction ST,
	SalesToMovie STM,
	Movie M
WHERE
	M.ID = STM.MovieID AND
	ST.ID = STM.SalesTransactionID AND
	U.ID = ST.UserID AND
	U.Nickname LIKE '%l%'
GROUP BY 
	U.ID,
	U.Nickname,
	U.City,
	STM.Quantity
HAVING
	STM.Quantity >
	(SELECT
		AVG(SalestoMovie.Quantity)
	FROM
		SalesToMovie)

-- 6
SELECT
	TempTable.MovieID,
	TempTable.MovieTitle,
	TempTable.PublisherName,
	[PublisherEmail] = LEFT(Publisher.Email, CHARINDEX('@', Publisher.Email) - 1)
FROM
	(
		SELECT
			[MovieID] = Movie.ID,
			[MovieTitle] = Movie.Title,
			[PublisherName] = Publisher.[Name],
			[Quantity] = SUM(SalesToMovie.Quantity)
		FROM
			Movie,
			SalesToMovie,
			Publisher
		WHERE
			Movie.ID = SalesToMovie.MovieID AND
			Movie.PublisherID = Publisher.ID
		GROUP BY
			Movie.ID,
			Movie.Title,
			Publisher.[Name]
	) AS TempTable,
	(
		SELECT
			[Quantity] = SalesToMovie.Quantity
		FROM
			SalesToMovie,
			SalesTransaction
		WHERE
			SalesToMovie.SalesTransactionID = SalesTransaction.ID AND
			DAY(SalesTransaction.TransactionDate) = 22
	) AS Temp2Table,
	Publisher
WHERE
	TempTable.PublisherName = Publisher.[Name]
GROUP BY
	TempTable.MovieID,
	TempTable.MovieTitle,
	TempTable.PublisherName,
	Publisher.Email,
	TempTable.Quantity
HAVING
	TempTable.Quantity > MAX(Temp2Table.Quantity)

-- 7
SELECT
	[DirectorID] = D.ID,
	[DirectorName] = D.[Name],
	[Movie Title] = LOWER(M.Title),
	CAST(
			(
			SELECT
				COUNT(Ge.ID)
			FROM
				Genre Ge,
				MovieToGenre MoToGe,
				Movie Mo
			WHERE
				Mo.ID = MoToGe.MovieID AND MoToGe.GenreID = Ge.ID AND M.ID = Mo.ID
		)AS VARCHAR
	) + ' gerne(s)' AS [Total Genre]
FROM
	Director D,
	Movie M
WHERE
	M.DirectorID = D.ID AND
	MONTH(M.ReleaseDate) = 9
GROUP BY
	M.ReleaseDate,
	D.ID,
	D.[Name],
	M.[Title],
	M.ID
HAVING 
	DAY(M.ReleaseDate) < MAX(DAY(M.ReleaseDate))

-- 8
SELECT
	[UserNickname] = [User].Nickname,
	[User First Name] = LEFT([User].Fullname, CHARINDEX(' ', [User].Fullname) - 1),
	[Total Quantity] = SUM(SalesToMovie.Quantity)
FROM
	[User],
	[SalesTransaction],
	[SalesToMovie],
	(
		SELECT
			[Quantity] = CASE WHEN MAX(SalesToMovie.Quantity) IS NULL THEN 0 ELSE MAX(SalesToMovie.Quantity) END
		FROM
			SalesToMovie,
			SalesTransaction
		WHERE
			SalesToMovie.SalesTransactionID = SalesTransaction.ID AND
			DAY(SalesTransaction.TransactionDate) = 20
			
	) AS TempTable
WHERE
	[User].ID = SalesTransaction.UserID AND
	SalesTransaction.ID = SalesToMovie.SalesTransactionID
GROUP BY
	[User].Nickname,
	[User].Fullname,
	TempTable.Quantity
HAVING
	SUM(SalesToMovie.Quantity) >= TempTable.Quantity

-- 9
CREATE VIEW CustomUserViewer AS
	SELECT
		[UserID] = [User].ID,
		[UserNickname] = [User].Nickname,
		[MaximumQuantity] = MAX(SalestoMovie.Quantity),
		[MinimumQuantity] = MIN(SalestoMovie.Quantity)
	FROM
		[User], 
		SalesTransaction,
		SalesToMovie
	WHERE
		SalesTransaction.ID = SalestoMovie.SalesTransactionID AND
		SalesTransaction.UserID = [User].ID AND
		DAY(SalesTransaction.TransactionDate) = 19 AND
		[User].Nickname LIKE '%h%'
	GROUP BY
		[User].ID,
		[User].Nickname

-- e.10.
CREATE VIEW CustomPublisherViewer
AS
	SELECT
		[PublisherName] = Publisher.[Name],
		[MovieTitle] = Movie.Title,
		[Release Date] = CONVERT(VARCHAR(255), Movie.ReleaseDate, 6),
		[Total Purchase] = SUM(SalesToMovie.Quantity),
		[Minimum Purchase] = MIN(SalesToMovie.Quantity)
	FROM
		Publisher,
		Movie,
		SalesToMovie
	WHERE
		Publisher.ID = Movie.PublisherID AND
		Movie.ID = SalesToMovie.MovieID AND
		Publisher.City IN ('Jakarta') AND
		MONTH(Movie.ReleaseDate) = 7
	GROUP BY
		Publisher.[Name],
		Movie.Title,
		Movie.ReleaseDate
