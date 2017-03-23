TRUNCATE TABLE [User]
INSERT INTO
	[User] (Email, Password, FirstName, LastName)
VALUES
	('john.smith@example.com', HASHBYTES('SHA1', '21kj hg2k3g2h4j '), 'John', 'Smith'),
	('mike.jones@example.com', HASHBYTES('SHA1', 'jkhkljhkljh'), 'Mike', 'Jones'),
	('alice.goldsmith@example.com', HASHBYTES('SHA1', 'u h23kjgk23j'), 'Alice', 'Goldsmith'),
	('david.blackburn@example.com', HASHBYTES('SHA1', 'lkh2 jlkjhl4k1'), 'David', 'Blackburn'),
	('barbara.babooshka@example.com', HASHBYTES('SHA1', '1opo4u 1'), 'Barbara', 'Babooshka')

TRUNCATE TABLE [Blog]
INSERT INTO
	[Blog] (AddedBy, DateAdded, Title, Content)
VALUES
	(1, GETDATE(), 'Blog article 1', 'This is a test blog.'),
	(2, GETDATE(), 'Blog article 2', 'This is a test blog.'),
	(2, GETDATE(), 'Blog article 3', 'This is a test blog.'),
	(4, GETDATE(), 'Blog article 4', 'This is a test blog.'),
	(5, GETDATE(), 'Blog article 5', 'This is a test blog.')

TRUNCATE TABLE [Category]
INSERT INTO
	[Category] (ParentId, Title)
VALUES
	(0, 'Category 1'),
	(0, 'Category 2'),
	(0, 'Category 3'),
	(0, 'Category 4'),
	(0, 'Category 5'),
	(1, 'Sub Category 1'),
	(2, 'Sub Category 2'),
	(2, 'Sub Category 3'),
	(4, 'Sub Category 4'),
	(8, 'Sub Sub Category 1'),
	(8, 'Sub Sub Category 2')

TRUNCATE TABLE [BlogCategory]
INSERT INTO
	[BlogCategory] (BlogId, CategoryId)
VALUES
	(1, 1),
	(1, 3),
	(2, 1),
	(2, 3),
	(3, 3),
	(5, 2)
