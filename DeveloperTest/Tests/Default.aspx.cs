﻿using System;
using System.Web.UI;

public partial class Tests_Default : Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
		Response.Redirect("~/");
	}
}