SELECT
	B.BlogId,
	B.[DateAdded],
	B.Title,
	U.[FirstName] + ' ' +   U.[LastName] AS AddedByName,
	U.[Email] AS AddedByEmail
FROM
	[Blog] B
INNER JOIN
	[User] U ON U.UserId = B.AddedBy
