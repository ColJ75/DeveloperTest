<%@ Page Title="SQL BLog" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Tests_SQL_Blog" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="jumbotron">
		<h1>SQL Blog</h1>
		<p>Can you write a query to produce a report on our simple blog?</p>
	</div>

	<pre>
	CREATE TABLE [User]
	(
		[UserId] [INT] IDENTITY(1,1) NOT NULL,
		[Email] [NVARCHAR](100) NULL,
		[Password] [VARBINARY](250) NULL,
		[FirstName] [NVARCHAR](50) NULL,
		[LastName] [NVARCHAR](50) NULL
	)

	CREATE TABLE [Blog]
	(
		[BlogId] [INT] IDENTITY(1,1) NOT NULL,
		[AddedBy] [INT] NOT NULL,
		[DateAdded] DATETIME NOT NULL,
		[Title] [NVARCHAR](250) NULL,
		[Content] [NVARCHAR](MAX) NULL
	)

	CREATE TABLE [Category]
	(
		[CategoryId] [INT] IDENTITY(1,1) NOT NULL,
		[Title] [NVARCHAR](100) NULL
	)

	CREATE TABLE [BlogCategory]
	(
		[BlogId] [INT] NOT NULL,
		[CategoryId] [INT] NOT NULL
	)</pre>

	<h2>We need the following columns:</h2>
	<ul>
		<li>Blog Id</li>
		<li>Title</li>
		<li>Added By (Name)</li>
		<li>Added By (Email)</li>
	</ul>

	<h2>Now, can you add another column for the following?</h2>

	<ul>
		<li>Default Category Title (the first category the blog is mapped to (if any))</li>
	</ul>

	<h2>Finally, can you add two more columns relating to the user in the AddedBy column?</h2>

	<ul>
		<li>User Blog Count (e.g. how many blogs the user has added)</li>
		<li>User Last Blog Added Date (when the user last added a blog)</li>
	</ul>
</asp:Content>
