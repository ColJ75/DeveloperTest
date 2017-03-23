using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tests_ASPNET_InterfaceIframe : Page
{
	protected void Page_Load(object sender, EventArgs e)
	{
	}
}

public interface ICachingAgent
{
	void Initialise();
	T Get<T>(string key);
	List<KeyValuePair<string, object>> GetAll();
	bool Add(string key, object o);
	void Remove(string key);
}

public class MyAgent : ICachingAgent
{
	private Dictionary<string, object> cache = null;

	public void Initialise()
	{
		cache = new Dictionary<string, object>();
	}

	public T Get<T>(string key)
	{
		return (cache != null) ? (T)cache[key] : (T)((object)null);
	}

	public List<KeyValuePair<string, object>> GetAll()
	{
		return (cache != null)
		  ? new List<KeyValuePair<string, object>>()
		  : null;
	}

	public bool Add(string key, object o)
	{
		if (cache != null)
		{
			cache.Add(key, o);
			return true;
		}

		return false;
	}
}
