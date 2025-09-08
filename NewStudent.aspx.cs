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

public partial class NNewStudent : System.Web.UI.Page
{
    SDS.Student_SelectDataTable SDT = new SDS.Student_SelectDataTable();
    SDSTableAdapters.Student_SelectTableAdapter Sadapter = new SDSTableAdapters.Student_SelectTableAdapter();

    SDS.STUDENT_SELECT_LOGINDataTable SLDT = new SDS.STUDENT_SELECT_LOGINDataTable();
    SDSTableAdapters.STUDENT_SELECT_LOGINTableAdapter SLAdapter = new SDSTableAdapters.STUDENT_SELECT_LOGINTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void clean()
    {
        
        txtSfname.Text = "";
        txtSLname.Text = "";
        txtSadd.Text = "";
        txtScity.Text = "";
        txtSstate.Text = "";
        txtSpin.Text = "";
        txtSMoNo.Text = "";
        txtSeid.Text = "";
        txtSErNo.Text = "";
        txtSUname.Text = "";
        txtSpass.Text = "";
        DrpDD.SelectedItem.Text = "DD";
        DrpMM.SelectedItem.Text = "MM";
        DrpYY.SelectedItem.Text = "YY";
        DrpGender.SelectedItem.Text = "-SELECT-";
        lblDOB.Text = "";
        lblGender.Text = "";

    }
    protected void btnRegister1_Click(object sender, EventArgs e)
    {
        lblDOB.Text = "";
        lblGender.Text = "";

        if (DrpDD.SelectedIndex == 0 && DrpMM.SelectedIndex == 0 && DrpYY.SelectedIndex == 0)
        {
            lblDOB.Text = "Select Your BirthDate";
        }
        else if (DrpGender.SelectedIndex == 0)
        {
            lblGender.Text = "Please select Gender";
        }
        else
        {
            int a = Sadapter.Insert(txtSErNo.Text, txtSfname.Text, txtSLname.Text, txtSadd.Text, txtScity.Text, txtSstate.Text, txtSpin.Text, Convert.ToDateTime(DrpDD.SelectedItem.Text + " " + DrpMM.SelectedItem.Text + " " + DrpYY.SelectedItem.Text), DrpGender.SelectedItem.ToString(), txtSMoNo.Text, txtSeid.Text, txtSUname.Text, txtSpass.Text);
            
            if (a == 1)
            {
                Session["SERNO"] = txtSErNo.Text;
                Response.Redirect("AddEducation.aspx");
                clean();

            }
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        clean();
    }
}
