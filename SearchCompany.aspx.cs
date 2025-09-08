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

public partial class HRM_SearchJob : System.Web.UI.Page
{
    DS_SEARCH_COMPANY.SELECT_SEARCH_COMPANYDataTable CDT = new DS_SEARCH_COMPANY.SELECT_SEARCH_COMPANYDataTable();
    DS_SEARCH_COMPANYTableAdapters.SELECT_SEARCH_COMPANYTableAdapter Cadapter = new DS_SEARCH_COMPANYTableAdapters.SELECT_SEARCH_COMPANYTableAdapter();

    DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable APJDT = new DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable();
    DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter APJAdapter = new DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter();

    CDS.ADDJOB_SELECTDataTable AJDT = new CDS.ADDJOB_SELECTDataTable();
    CDSTableAdapters.ADDJOB_SELECTTableAdapter AJAdapter = new CDSTableAdapters.ADDJOB_SELECTTableAdapter();

    
    protected void Page_Load(object sender, EventArgs e)
    {
        CDT = Cadapter.SELECT_SEARCH_COMPANY(Session["CCate"].ToString(), Session["CQuali"].ToString(), Session["CSkill"].ToString());
        Session["cid"] = CDT.Rows[0]["CID"].ToString();
        if (CDT.Rows.Count == 0)
        {
            lblmsg.Text = "No Result found !!!";
        }
        else
        {
            DataList3.DataSource = CDT;
            DataList3.DataBind();
        }
    }


    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewmore")
        {
            AJDT = AJAdapter.SELECT_ADDJO_BYID(Convert.ToInt32(Session["cid"].ToString()));
            Session["JID"] = AJDT.Rows[0]["JobId"].ToString();
            Response.Redirect("ViewMoreCompanyDetail.aspx");
        }
        else if (e.CommandName == "apply")
        {
            AJDT = AJAdapter.SELECT_ADDJO_BYID(Convert.ToInt32(Session["cid"].ToString()));
            int jid = Convert.ToInt32(AJDT.Rows[0]["JobId"].ToString());
            APJDT=APJAdapter.SELECT_APPLYJOB_BYJID_SID(jid,Convert.ToInt32(Session["SID"].ToString()));
            if (APJDT.Rows.Count >0)
            {
                lblmsg.Text = "Job already Applid";
            }
            else
            {
                int a = APJAdapter.Insert(jid, Convert.ToInt32(Session["cid"].ToString()), Convert.ToInt32(Session["SID"].ToString()));
                if (a == 1)
                {
                    lblmsg.Text = "Job Apply successfuly.";
                }
            }
          }
    }
}
