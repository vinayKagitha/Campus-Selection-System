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

public partial class AppliedJob : System.Web.UI.Page
{
    DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable AJDT = new DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable();
    DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter AJAdapter = new DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter();

    CDS.ADDJOB_SELECTDataTable CDT = new CDS.ADDJOB_SELECTDataTable();
    CDSTableAdapters.ADDJOB_SELECTTableAdapter CAdapter = new CDSTableAdapters.ADDJOB_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            AJDT = AJAdapter.SELECT_APPLYJOB_BYSID(Convert.ToInt32(Session["SID"].ToString()));
            if (AJDT.Rows.Count == 0)
            {
                lblApplymsg.Text = "you not apply any Company !!! So please apply any Company";
            }
            else
            {
                int cid = Convert.ToInt32(AJDT.Rows[0]["CId"].ToString());
                
                    CDT = CAdapter.SELECT_ADDJO_BYID(cid);
                    DataList3.DataSource = CDT;
                    DataList3.DataBind();
                
            }
        }
    }


    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewmore")
        {
            Response.Redirect("ViewMoreCompanyDetail.aspx");
            
        }
    }
}
