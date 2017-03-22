<%@ Page Title="Tests" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="CSSLayouts.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<style type="text/css">
		* { box-sizing: content-box; }
		#h { background: #f00; width: 650px; margin: 0 auto; padding: 10px; color: #fff; }
		#m { width: 650px; margin: 10px auto; padding: 0; }
			#m::after { content: ""; display: block; clear: both; }
			#m #a { float: left; background: #ff0; width: 200px; padding: 10px; }
			#m #b { float: left; background: #0f0; width: 440px; margin: 0 0 0 10px; padding: 10px; }
		#f { background: #f00; width: 650px; margin: 0 auto; padding: 10px; color: #fff; }
	</style>

	<div class="jumbotron">
		<h1>CSS Layouts</h1>
	</div>

	<h3>The layout below is broken. Can you figure out why? The left navigation should be sat alongside the green content area.</h3>
	<br />

	<div id="h">Website Header</div>
	<div id="m">
		<div id="a">Left Navigation</div>
		<div id="b">
			<h1>Test Page</h1>
			<p>This is a test page</p>
		</div>
	</div>
	<div id="f">bottom</div>
</asp:Content>
