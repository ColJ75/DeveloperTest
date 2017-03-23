<%@ Page Title="ASP.NET Repeater" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Repeater.aspx.cs" Inherits="Tests_ASPNET_Repeater" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="jumbotron">
		<h1>ASP.NET Repeater</h1>
		<p>Our repeater isn’t working. There are a number of errors. Can you fix them all and get it working?</p>
	</div>

	<iframe src="RepeaterIframe.aspx" style="width: 100%; height: 320px; border: 0 none;"></iframe>
</asp:Content>
