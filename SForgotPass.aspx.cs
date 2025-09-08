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

public partial class SForgotPass : System.Web.UI.Page
{
    SDS.Student_SelectDataTable SDT = new SDS.Student_SelectDataTable();
    SDSTableAdapters.Student_SelectTableAdapter Sadapter = new SDSTableAdapters.Student_SelectTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnviewpass_Click(object sender, EventArgs e)
    {
        lblFeid.Text = "";
        lblFMobno.Text = "";
        if (txtFEid.Text == "")
        {
            lblFeid.Text = "Enter Email id";
            lblFMobno.Text = "";
        }
        else if (txtFMobno.Text == "")
        {
            lblFeid.Text = "";
            lblFMobno.Text = "Enter Mobile No.";
        }
        else 
        {
            SDT = Sadapter.SELECT_STUDENT_BYFORGTPASS(txtFEid.Text, txtFMobno.Text);
            if (SDT.Rows.Count == 1)
            {
                lblDippass.Text = "Your Password ::" + SDT.Rows[0]["Password"].ToString();
                lblFeid.Text = "";
                lblFMobno.Text = "";
            }
            else
            {
                lblDippass.Text = "Email ID or Mob No. not match.";
                lblFeid.Text = "";
                lblFMobno.Text = "";
            }

        }

    }
}
