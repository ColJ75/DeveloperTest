<%@ Page Title="Javascript Scope" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Scope.aspx.cs" Inherits="Tests_Javascript_Scope" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="jumbotron">
		<h1>Javascript Scope</h1>
		<p>What is the output from the following code snippets?</p>
	</div>

	<pre>
	function test() {
		console.log(a);
		console.log(foo());

		var a = 1;
		function foo() {
			return 2;
		}
	}

	test();</pre>

	<pre>
	var fullName = 'James Smith';
	var obj = {
		fullName: 'Steven Jones',
		prop: {
			fullName: 'John Brown',
			getFullName: function () {
				return this.fullName;
			}
		}
	};

	console.log(obj.prop.getFullName());

	var test = obj.prop.getFullName;
	console.log(test());</pre>
</asp:Content>
