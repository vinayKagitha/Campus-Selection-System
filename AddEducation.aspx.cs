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

public partial class AddEducation : System.Web.UI.Page
{
    SDS.SELECT_ADDEDUDataTable EDT = new SDS.SELECT_ADDEDUDataTable();
    SDSTableAdapters.SELECT_ADDEDUTableAdapter EAdapter = new SDSTableAdapters.SELECT_ADDEDUTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            txtErlno.Text = Session["SERNO"].ToString();
        }
    }
    protected void clean()
    {
        
        txtclgname.Text = "";
        txtExSkill.Text = "";
        txtCPI.Text = "";
        txtCGPA.Text = "";
        drpBranch.SelectedIndex =0;
        
        drpEdu.SelectedIndex = 0;
        drpPassyear.SelectedIndex = 0;
        drpsem.SelectedIndex = 0;
        drpreqskill.SelectedIndex = 0;
        
        
    }
    protected void btnsbmit_Click(object sender, EventArgs e)
    {
        lblEdu.Text = "";
        lblBranch.Text = "";
        lblPassyr.Text = "";
        lblSkill.Text = "";
        lblmsg.Text = "";
        lblResume.Text = "";
        if(drpsem.SelectedIndex == 0)
        {
            lblsem.Text = "!!!";
        }
        else if (drpEdu.SelectedIndex == 0)
        {
            lblEdu.Text = "!!!";
         }
        else if (drpBranch.SelectedIndex == 0)
        {
            lblBranch.Text = "!!!";
            
        }
        else if (drpPassyear.SelectedIndex == 0)
        {
            lblPassyr.Text = "!!!";
            
        }
        else if (drpreqskill.SelectedIndex == 0)
        {
            lblSkill.Text = "!!!";
        }

        else
        {
            if (FUResume.HasFile)
            {
                FUResume.SaveAs(Server.MapPath("~/Resume/" + FUResume.FileName.ToString()));
                string resume = "~/Resume/" + FUResume.FileName.ToString();
                int ist = EAdapter.Insert(Convert.ToInt32(Session["SID"].ToString()), txtclgname.Text, txtErlno.Text, drpsem.SelectedItem.Text, drpEdu.SelectedItem.Text, drpBranch.SelectedItem.Text, drpPassyear.SelectedItem.Text, Convert.ToDouble(txtCPI.Text), Convert.ToDouble(txtCGPA.Text), drpreqskill.SelectedItem.Text, txtExSkill.Text, resume);

                if (ist == 1)
                {
                    lblmsg.Text = "Add successfully..";
                    clean();
                    Response.Redirect("Home.aspx");
                }

            }
            else
            {
                lblResume.Text = "!!!";
                lblEdu.Text = "";
                lblBranch.Text = "";
                lblPassyr.Text = "";
            }
        }
    }
}
