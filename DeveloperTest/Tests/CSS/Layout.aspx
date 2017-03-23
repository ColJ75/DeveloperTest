<%@ Page Title="CSS Layout" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Layout.aspx.cs" Inherits="Tests_CSS_Layout" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<style type="text/css">
		.cssTest * { box-sizing: content-box; }
		.cssTest #h { background: #c33; margin: 0; padding: 10px; color: #fff; }
		.cssTest #m { margin: 10px 0; padding: 0; }
			.cssTest #m::after { content: ""; display: block; clear: both; }
			.cssTest #m #a { float: left; background: #ff9; width: 25%; padding: 10px; }
			.cssTest #m #b { float: left; background: #9f9; width: 73%; margin: 0 0 0 2%; padding: 10px; }
		.cssTest #f { background: #c33; margin: 0; padding: 10px; color: #fff; }
	</style>

	<div class="jumbotron">
		<h1>CSS Layout</h1>
		<p>The layout below is broken. Can you figure out why? The green content area should be sat alongside the left navigation, and both should fit flush with the header and footer (horizontally).</p>
	</div>

	<div class="cssTest">
		<div id="h">Website Header</div>
		<div id="m">
			<div id="a">Left Navigation</div>
			<div id="b">
				<h1>Test Page</h1>
				<p>This is a test page</p>
			</div>
		</div>
		<div id="f">bottom</div>
	</div>
</asp:Content>
