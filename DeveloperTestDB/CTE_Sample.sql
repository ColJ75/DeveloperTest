;WITH
	Categories ([RowNo], [CategoryId], [ParentId], [Level], [Title])
AS
(
	SELECT
		CAST(RIGHT('0000' + CAST(ROW_NUMBER() OVER(ORDER BY [Title]) AS VARCHAR(10)), 5) AS VARCHAR(MAX)) AS [RowNo],
		[CategoryId],
		[ParentId],
		1 AS [Level],
		[Title]
	FROM
		Category
	WHERE
		[ParentId] = 0

	UNION ALL
	SELECT
		C2.[RowNo] + '_' + CAST(RIGHT('0000' + CAST(ROW_NUMBER() OVER(PARTITION BY C2.[Level] ORDER BY C.[Title]) AS VARCHAR(10)), 5) AS VARCHAR(MAX)) AS [RowNo],
		C.[CategoryId],
		C.[ParentId],
		C2.[Level] + 1 AS [Level],
		C.[Title]
	FROM
		Category C
	INNER JOIN
		Categories C2 ON C2.[CategoryId] = C.[ParentId]
)
SELECT
	[RowNo],
	[CategoryId],
	[ParentId],
	[Level],
	REPLICATE(' ', (Level - 1) * 4) + [Title]
FROM
	Categories
ORDER BY
	[RowNo],
	[Title]