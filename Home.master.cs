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

public partial class HRM_Home : System.Web.UI.MasterPage
{
    SDS.Student_SelectDataTable SDT = new SDS.Student_SelectDataTable();
    SDSTableAdapters.Student_SelectTableAdapter Sadapter = new SDSTableAdapters.Student_SelectTableAdapter();

    CDS.COMPANY_SELECTDataTable CDT = new CDS.COMPANY_SELECTDataTable();
    CDSTableAdapters.COMPANY_SELECTTableAdapter Cadapter = new CDSTableAdapters.COMPANY_SELECTTableAdapter();

    SDS.STUDENT_SELECT_LOGINDataTable SLDT = new SDS.STUDENT_SELECT_LOGINDataTable();
    SDSTableAdapters.STUDENT_SELECT_LOGINTableAdapter SLadapter = new SDSTableAdapters.STUDENT_SELECT_LOGINTableAdapter();

    CDS.ADDJOB_SELECTDataTable AJDT = new CDS.ADDJOB_SELECTDataTable();
    CDSTableAdapters.ADDJOB_SELECTTableAdapter AJAdapter = new CDSTableAdapters.ADDJOB_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        { 
            AJDT=AJAdapter.SELECT_TOP5CMP();
            DL5CMP.DataSource = AJDT;
            DL5CMP.DataBind();
        }
    }
    protected void btnjlogin_Click(object sender, EventArgs e)
    {
       
        lblClogin.Text = "";
        lblCP.Text = "";
        lblresult.Text = "";
        lblCU.Text = "";
        txtCpass.Text = "";
        txtCuname.Text = "";
        drpCate.SelectedIndex = 0;
        drpQulif.SelectedIndex = 0;
        drpreqskill.SelectedIndex = 0;
       
        if (txtSuname.Text == "" && txtSupass.Text == "")
        {
            lblSU.Text = "!!";
            lblSP.Text = "!!";
            lblSlogin.Text = "Enter Username & Password";
        }
        else if(txtSuname.Text=="")
        {
            lblSU.Text = "!!";
            lblSP.Text = "";
            lblSlogin.Text = "Enter Username.";
        }
        else if (txtSupass.Text == "")
        {
            lblSP.Text = "!!";
            lblSU.Text = "";
            lblSlogin.Text = "Enter Password.";
        }
        else
        {
            SLDT = SLadapter.SELECT_STUDENT_BYLOGIN(txtSuname.Text, txtSupass.Text);
            if (SLDT.Rows.Count == 1)
            {
                Session["SID"] = SLDT.Rows[0]["SId"].ToString();
                Session["suname"] = txtSuname.Text;
                Session["spass"] = txtSupass.Text;
                Session["erno"] = SLDT.Rows[0]["EnrallNo"].ToString();
                Session["email"] = SLDT.Rows[0]["EmailId"].ToString();
                Session["sname"] = SLDT.Rows[0]["FName"].ToString();
                //Response.Redirect("ViewJob.aspx");
                Response.Redirect("SLogin.aspx");
            }
            else
            {
                lblSlogin.Text="Wrong username & Password";
                lblSU.Text = "";
                lblSP.Text = "";
                txtSuname.Text = "";
                txtSupass.Text = "";               
             }       
        }
    }
    protected void btnClogin_Click(object sender, EventArgs e)
    {
        lblSlogin.Text = "";
        lblSP.Text = "";
        lblSU.Text = "";
        lblresult.Text = "";
        txtSuname.Text = "";
        txtSupass.Text = "";
        drpCate.SelectedIndex = 0;
        drpQulif.SelectedIndex = 0;
        drpreqskill.SelectedIndex = 0;
     

        if (txtCuname.Text == "" && txtCpass.Text == "")
        {
            lblCU.Text = "!!";
            lblCP.Text = "!!";
            lblClogin.Text = "Enter Username & Password";
        }
        else if (txtCuname.Text == "")
        {
            lblCU.Text = "!!";
            lblCP.Text = "";
            lblClogin.Text = "Enter Username";
        }
        else if (txtCpass.Text == "")
        {
            lblCU.Text = "";
            lblCP.Text = "!!";
            lblClogin.Text = "Enter Password";
        }
        else 
        {
            CDT = Cadapter.SELECT_BYLOGIN_COMPANY(txtCuname.Text, txtCpass.Text);
            if (CDT.Rows.Count ==1)
            {
                Session["CID"] = CDT.Rows[0]["CID"].ToString();
                Session["cname"] = txtCuname.Text;
                Session["ccname"] = CDT.Rows[0]["CName"].ToString();
                Session["email"] = CDT.Rows[0]["EmailId"].ToString();
                Response.Redirect("CLogin.aspx");
                lblCU.Text = "";
                lblCP.Text = "";
            }
            else
            {
                lblClogin.Text = "Wrong Username & Password";
                lblCU.Text = "";
                lblCP.Text = "";
                txtCuname.Text = "";
                txtCpass.Text = "";
            }
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("Newstudent.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        //Response.Redirect("Forgotpass.aspx");
    }
    protected void lnknewcmpny_Click(object sender, EventArgs e)
    {
        //Response.Redirect("NewCompany.aspx");
    }
    protected void lnkforgtpass_Click(object sender, EventArgs e)
    {
        //Response.Redirect("cpmForgotpass.aspx");    
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        lblSlogin.Text = "";
        lblClogin.Text = "";
        lblCP.Text = "";
        lblCU.Text = "";
        lblSP.Text = "";
        lblSU.Text = "";
        txtCpass.Text = "";
        txtCuname.Text = "";
        txtSuname.Text = "";
        txtSupass.Text = "";
        
        if (rdobtnCompany.Checked == true)
        {
            if (drpCate.SelectedItem.Text == "SELECT" && drpQulif.SelectedItem.Text == "SELECT" && drpreqskill.SelectedItem.Text == "SELECT")
            {
                lblresult.Text = "Plz select keywords !!";
            }
            else
            {
                lblresult.Text = "";
                Session["Cate"] = drpCate.SelectedItem.Text;
                Session["Quali"] = drpQulif.SelectedItem.Text;
                Session["Skill"] = drpreqskill.SelectedItem.Text;
                Response.Redirect("Search STD without Login.aspx");
            }
        }
        else if (rdobtnSTD.Checked == true)
        {
            if (drpCate.SelectedItem.Text == "SELECT" && drpQulif.SelectedItem.Text == "SELECT" && drpreqskill.SelectedItem.Text == "SELECT")
            {
                lblresult.Text = "Plz select keywords !!";
            }
            else
            {
                lblresult.Text = "";
                Session["CCate"] = drpCate.SelectedItem.Text;
                Session["CQuali"] = drpQulif.SelectedItem.Text;
                Session["CSkill"] = drpreqskill.SelectedItem.Text;
                Response.Redirect("SearchCMP_withoutLogin.aspx");
            }
        }

        else if ((drpCate.SelectedItem.Text != "SELECT" || drpQulif.SelectedItem.Text != "SELECT" || drpreqskill.SelectedItem.Text != "SELECT") && (rdobtnSTD.Checked == false && rdobtnCompany.Checked == false))
        { 
            lblresult.Text="Plz select Appropriate Radiobutton.";
        }
        else
        {
            lblresult.Text = "Plz select keyword & Radiobutton";
        }
    }
}
