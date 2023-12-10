using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Configuration;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    protected void ddlTheme_SelectedIndexChanged(object sender, EventArgs e)
    {
        Configuration config = WebConfigurationManager.OpenWebConfiguration("~/");
        PagesSection pages = (PagesSection)config.GetSection("system.web/pages");
        pages.Theme = ddlTheme.SelectedItem.Text.ToString();
        if (!pages.SectionInformation.IsLocked)
        {

            config.Save();
            Response.Redirect("Default.aspx");
        }
    }
}