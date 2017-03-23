<%@ Page Title="ASP.NET Repeater" Language="C#" MasterPageFile="~/Iframe.Master" AutoEventWireup="true" CodeFile="RepeaterIframe.aspx.cs" Inherits="Tests_ASPNET_RepeaterIframe" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<asp:Repeater ID="rptResults" runat="server" OnItemDataBound="rptResults_ItemDataBound">
		<HeaderTemplate>
			<table class="table table-hover">
				<tr>
					<th>Item Id</th>
					<th>Title</th>
					<th>Status</th>
				</tr>
		</HeaderTemplate>
		<ItemTemplate>
			<tr>
				<td><%= ((TestItem)Container.DataItem).ItemId %></td>
				<td><%= ((TestItem)Container.DataItem).Title %></td>
				<td>
					<asp:DropDownList ID="ddlStatus" runat="server">
						<asp:ListItem Text="Active" Value="1"></asp:ListItem>
						<asp:ListItem Text="Hidden" Value="2"></asp:ListItem>
						<asp:ListItem Text="Deleted" Value="3"></asp:ListItem>
					</asp:DropDownList>
					<asp:HiddenField ID="hfOldStatus" runat="server" />
				</td>
			</tr>
		</ItemTemplate>
		<FooterTemplate>
			</table>
		</FooterTemplate>
	</asp:Repeater>
</asp:Content>
