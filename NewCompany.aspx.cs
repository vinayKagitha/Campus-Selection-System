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

public partial class NNewCompany : System.Web.UI.Page
{
    CDS.COMPANY_SELECTDataTable CDT = new CDS.COMPANY_SELECTDataTable();
    CDSTableAdapters.COMPANY_SELECTTableAdapter CAdapter = new CDSTableAdapters.COMPANY_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void clean()
    {
        txtcAdd.Text = "";
        txtCCity.Text = "";
        txtCConfpass.Text = "";
        txtCContNO.Text = "";
        txtCContperName.Text = "";
        txtCEmailid.Text = "";
        txtCMoNo.Text = "";
        txtCName.Text = "";
        txtCPass.Text = "";
        txtCPincode.Text = "";
        txtCState.Text = "";
        txtCUName.Text = "";
        txtCWebsite.Text = "";
    }
    protected void btnCsubmit_Click(object sender, EventArgs e)
    {
        int ins = CAdapter.Insert(txtCName.Text, txtcAdd.Text, txtCCity.Text, txtCState.Text, txtCPincode.Text, txtCContperName.Text, txtCMoNo.Text, txtCContNO.Text, txtCEmailid.Text, txtCWebsite.Text, txtCUName.Text, txtCPass.Text);

        if (ins == 1)
        {
            lblcmsg.Text = "Regisrtation Successfuly !!";
            clean();
            Response.Redirect("CLogin.aspx");
        }
    }
    protected void btnCreset_Click(object sender, EventArgs e)
    {
        clean();
    }
}
