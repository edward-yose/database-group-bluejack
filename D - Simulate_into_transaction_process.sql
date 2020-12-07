-- D
-- Create query using DML syntax to simulate the transactions process for sales transactions and review transactions.
-- Note: DML syntax to fill database and DML syntax to simulate the transactions process should be a different query.

DECLARE 
	@InputUserID AS CHAR(6), 
	@InputTransactionID AS CHAR(6),
	@InputTransactionDate AS Date,
	@InputMovieID AS CHAR(6),
	@InputQuantity AS INTEGER

INSERT INTO (@InputUserID)
VALUES ('USR001'

INSERT INTO SalesToMovie (SalesTransactionID, MovieID, Quantity)
VALUES ('', '', '');


GO
CREATE PROCEDURE [simulate transaction process2]
AS
	SELECT * FROM SalesTransaction
	SELECT * FROM Review
GO;

--data yang terlibat
SELECT * FROM SalesToMovie
SELECT * FROM SalesTransaction
SELECT * FROM Review

EXEC [simulate transaction process2]
