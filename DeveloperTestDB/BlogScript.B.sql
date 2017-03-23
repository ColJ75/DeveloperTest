SELECT
	B.BlogId,
	B.[DateAdded],
	B.Title,
	ISNULL(C.Title, '') AS [DefaultCategory],
	U.[FirstName] + ' ' +  U.[LastName] AS AddedByName,
	U.[Email] AS AddedByEmail
FROM
	[Blog] B
INNER JOIN
	[User] U ON U.UserId = B.AddedBy
OUTER APPLY
	(
		SELECT TOP 1
			C.[Title]
		FROM
			[Category] C
		INNER JOIN
			[BlogCategory] BC ON BC.CategoryId = C.CategoryId AND BC.BlogId = B.BlogId
	) C
