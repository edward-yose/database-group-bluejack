-- D
-- Create query using DML syntax to simulate the transactions process for sales transactions and review transactions.
-- Note: DML syntax to fill database and DML syntax to simulate the transactions process should be a different query.


GO
CREATE PROCEDURE [simulate transaction process]
AS
	SELECT * FROM Review
	SELECT * FROM SalesTransaction
GO;

EXEC [simulate transaction process]
