DROP TABLE [User]
CREATE TABLE [User]
(
	[UserId] [INT] IDENTITY(1,1) NOT NULL,
	[Email] [NVARCHAR](100) NULL,
	[Password] [VARBINARY](250) NULL,
	[FirstName] [NVARCHAR](50) NULL,
	[LastName] [NVARCHAR](50) NULL
)

DROP TABLE [Blog]
CREATE TABLE [Blog]
(
	[BlogId] [INT] IDENTITY(1,1) NOT NULL,
	[AddedBy] [INT] NOT NULL,
	[DateAdded] DATETIME NOT NULL,
	[Title] [NVARCHAR](250) NULL,
	[Content] [NVARCHAR](MAX) NULL
)

DROP TABLE [Category]
CREATE TABLE [Category]
(
	[CategoryId] [INT] IDENTITY(1,1) NOT NULL,
	[ParentId] INT NULL,
	[Title] [NVARCHAR](100) NULL
)

DROP TABLE [BlogCategory]
CREATE TABLE [BlogCategory]
(
	[BlogId] [INT] NOT NULL,
	[CategoryId] [INT] NOT NULL
)
