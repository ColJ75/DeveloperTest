<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="jumbotron">
		<h1>Pin Digital Developer Test</h1>
		<p class="lead">This project is a small collection of tests, intended to measure the abilities of ASP.NET web developers for a variety of core skills.</p>
	</div>

	<h2>Please choose a test:</h2>

	<div class="row">
		<div class="col-md-4">
			<h3>CSS Layout</h3>
			<p><a class="btn btn-default" runat="server" href="~/Tests/CSS/Layout">CSS Layout &raquo;</a></p>
		</div>
		<div class="col-md-4">
			<h3>Javascript Scope</h3>
			<p><a class="btn btn-default" runat="server" href="~/Tests/Javascript/Scope">View &raquo;</a></p>
		</div>
		<div class="col-md-4">
			<h3>ASP.NET Repeater</h3>
			<p><a class="btn btn-default" runat="server" href="~/Tests/ASP.NET/Repeater">View &raquo;</a></p>
		</div>
	</div>

	<div class="row">
		<div class="col-md-4">
			<h3>C# Interface</h3>
			<p><a class="btn btn-default" runat="server" href="~/Tests/CSharp/Interface">View &raquo;</a></p>
		</div>
		<div class="col-md-4">
			<h3>SQL Blog</h3>
			<p><a class="btn btn-default" runat="server" href="~/Tests/SQL/Blog">View &raquo;</a></p>
		</div>
		<div class="col-md-4">
			<h3>SQL CTE</h3>
			<p><a class="btn btn-default" runat="server" href="~/Tests/SQL/CTE">View &raquo;</a></p>
		</div>
	</div>
</asp:Content>
