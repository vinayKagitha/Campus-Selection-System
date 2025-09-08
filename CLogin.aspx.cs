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

public partial class HRM_JLogin : System.Web.UI.Page
{
    CDS.COMPANY_SELECTDataTable CDT = new CDS.COMPANY_SELECTDataTable();
    CDSTableAdapters.COMPANY_SELECTTableAdapter CAdapter = new CDSTableAdapters.COMPANY_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter.selectBY_CID(Convert.ToInt32(Session["CID"].ToString()));
            lblCName.Text = CDT.Rows[0]["CName"].ToString();
            lblCadd.Text = CDT.Rows[0]["Address"].ToString();
            lblCCity.Text = CDT.Rows[0]["City"].ToString();
            lblCState.Text = CDT.Rows[0]["State"].ToString();
            lblCPin.Text = CDT.Rows[0]["PinCode"].ToString();
            lblCEId.Text = CDT.Rows[0]["EmailId"].ToString();
            lblCWebsite.Text = CDT.Rows[0]["Website"].ToString();
            lblCContNO.Text = CDT.Rows[0]["Contact_No"].ToString();
            MultiView1.ActiveViewIndex = 0;
        }

    }
    protected void lnkviewprofile_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void lnkcngpass_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void lnkremove_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void btnCngpass_Click(object sender, EventArgs e)
    {
        CDT = CAdapter.selectBY_CID(Convert.ToInt32(Session["CID"].ToString()));
        
        if (CDT.Rows.Count == 1 )
        {
            string pass = CDT.Rows[0]["Password"].ToString();
            if (pass.ToString() == txtoldpass.Text)
            {
                if (txtNpass.Text == txtCNpass.Text)
                {
                   
                    CAdapter.COMPANY_CHANGE_PASS(txtNpass.Text);
                    lblmsg.Text = "password change successfully";
                    txtCNpass.Text = "";
                    txtNpass.Text = "";
                    txtoldpass.Text = "";
                   

                }
                else
                {
                    lblmsg.Text = "confo pass does not match !!!";
                    txtNpass.Text = "";
                    txtCNpass.Text = "";

                }
            }
            else
            {
                lblmsg.Text = "current pass does not match !! ";
                txtCNpass.Text = "";
                txtNpass.Text = "";
                txtoldpass.Text = "";
            }
        }

    }
    protected void btnremoveacnt_Click(object sender, EventArgs e)
    {
        CAdapter.Delete(Convert.ToInt32(Session["CID"].ToString()));
        Response.Redirect("Home.aspx");
    }
}
