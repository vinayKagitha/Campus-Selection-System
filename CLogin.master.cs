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

public partial class JLogin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblCaname.Text = Session["ccname"].ToString();

    }
    protected void lnkbtnaddjob_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddJob.aspx");
    }
    protected void lnkbtnviewpostjob_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewPostedJob.aspx");
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (drpCate.SelectedItem.Text=="SELECT" && drpQulif.SelectedItem.Text=="SELECT" && drpreqskill.SelectedItem.Text=="SELECT")
        {
            lblresult.Text = "Plz select your keywords !!";
        }
        else
        {
            lblresult.Text = "";
            Session["Cate"] = drpCate.SelectedItem.Text;
            Session["Quali"] = drpQulif.SelectedItem.Text;
            Session["Skill"] = drpreqskill.SelectedItem.Text;
            Response.Redirect("SearchSTD.aspx");
            
        }

       
    }


    protected void lnkbtnLogOut_Click(object sender, EventArgs e)
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
        Session["ccname"] = null;
        Response.Redirect("Home.aspx");
    }
    protected void lnkbtnexam_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADDQUAETIONPAPER.aspx");

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("CLogin.aspx");
        
    }

    
}
