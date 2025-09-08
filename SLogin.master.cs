using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class CLogin : System.Web.UI.MasterPage
{
    DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable AJDT = new DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable();
    DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter AJAdapter = new DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblStdName.Text = Session["sname"].ToString();
        AJDT = AJAdapter.SELECT_APPLYJOB_BYSID(Convert.ToInt32(Session["SID"].ToString()));
        lnkappliedjob.Text = "Applied Job(" + AJDT.Rows.Count + ")";
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (drpCate.SelectedItem.Text == "SELECT" && drpQulif.SelectedItem.Text == "SELECT" && drpreqskill.SelectedItem.Text == "SELECT")
        {
            lblresult.Text = "Plz select your keywords !!";
        }
        else
        {
            lblresult.Text = "";
            Session["CCate"] = drpCate.SelectedItem.Text;
            Session["CQuali"] = drpQulif.SelectedItem.Text;
            Session["CSkill"] = drpreqskill.SelectedItem.Text;
            Response.Redirect("SearchCompany.aspx");
        }
    }
    protected void lnkmyacnt_Click(object sender, EventArgs e)
    {
        Response.Redirect("SLogin.aspx");
    }
    protected void lnkappliedjob_Click(object sender, EventArgs e)
    {
        Response.Redirect("AppliedJob.aspx");
    }
    protected void lnkjobmtch_Click(object sender, EventArgs e)
    {
        Response.Redirect("Job_Matches.aspx");
            
    }
    protected void lnklogout_Click(object sender, EventArgs e)
    {
        Session["SID"] = null;
        Session["suname"] = null;
        Session["spass"] = null;
        Session["erno"] = null;
        Session["CID"] = null;
        Session["cname"] = null;
        Session["CCate"] = null;
        Session["CQuali"] = null;
        Session["CSkill"] = null;
        Response.Redirect("Home.aspx");
    }
    protected void lnkexam_Click(object sender, EventArgs e)
    {
        Response.Redirect("OnlineExam.aspx");
    }
}
