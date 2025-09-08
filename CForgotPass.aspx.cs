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

public partial class CForgotPass : System.Web.UI.Page
{
    CDS.COMPANY_SELECTDataTable FCDT = new CDS.COMPANY_SELECTDataTable();
    CDSTableAdapters.COMPANY_SELECTTableAdapter FCadapter = new CDSTableAdapters.COMPANY_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnviewpass_Click(object sender, EventArgs e)
    {
        lblFeid.Text = "";
        lblFMobno.Text = "";
        if (txtFEid.Text == "")
        {
            lblFeid.Text = "!!!!!";
            lblFMobno.Text = "";
        }
        else if (txtFMobno.Text == "")
        {
            lblFeid.Text = "";
            lblFMobno.Text = "!!!!!";
        }
        else
        {
            FCDT = FCadapter.SELECT_COM_BYFORGTPASS(txtFEid.Text, txtFMobno.Text);
            if (FCDT.Rows.Count > 0)
            {
                lblDippass.Text = "your Password ::" + FCDT.Rows[0]["Password"].ToString();
                lblFeid.Text = "";
                lblFMobno.Text = "";
                txtFEid.Text = "";
                txtFMobno.Text = "";
            }
            else
            {
                lblDippass.Text = "Enter right E-Id and Mo.NO !! ";
            }

        }

    }
}
