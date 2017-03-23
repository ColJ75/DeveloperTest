using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tests_ASPNET_RepeaterIframe : Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		rptResults.DataSource = new List<TestItem>()
		{
			new TestItem() { ItemId = 1, Title = "Item 1", Status = "1" },
			new TestItem() { ItemId = 2, Title = "Item 2", Status = "2" },
			new TestItem() { ItemId = 3, Title = "Item 3", Status = "3" },
			new TestItem() { ItemId = 4, Title = "Item 4", Status = "2" },
			new TestItem() { ItemId = 5, Title = "Item 5", Status = "1" }
		};
		rptResults.DataBind();
	}

	protected void rptResults_ItemDataBound(object sender, RepeaterItemEventArgs e)
	{
		TestItem item = (TestItem)e.Item.DataItem;
		((HiddenField)e.Item.FindControl("hfOldStatus")).Value = item.Status.ToString();
		((DropDownList)e.Item.FindControl("ddlStatus")).Value = item.Status;
	}

	public class TestItem
	{
		public int ItemId { get; set; }
		public string Title { get; set; }
		public string Status { get; set; }
	}
}