using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class HRM_ViewJob : System.Web.UI.Page
{
    CDS.ADDJOB_SELECTDataTable CDT = new CDS.ADDJOB_SELECTDataTable();
    CDSTableAdapters.ADDJOB_SELECTTableAdapter Cadapter = new CDSTableAdapters.ADDJOB_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            CDT = Cadapter.select_VIEWPOST_BYCID(Convert.ToInt32(Session["CID"].ToString()));
            DataList3.DataSource = CDT;
            DataList3.DataBind();
        }
    }
    
    
}
