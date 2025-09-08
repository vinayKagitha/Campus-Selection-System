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

public partial class HRM_Contactus : System.Web.UI.Page
{
    DS_MSG.ADMIN_SELECT_MSGDataTable AMDT = new DS_MSG.ADMIN_SELECT_MSGDataTable();
    DS_MSGTableAdapters.ADMIN_SELECT_MSGTableAdapter AMAdapter = new DS_MSGTableAdapters.ADMIN_SELECT_MSGTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        int a = AMAdapter.Insert(txtfname.Text, txtmono.Text, txtemail.Text, txtmessage.Text);

        if (a == 1)
        {
            lblmsg.Text = "Message Send Successesfuly..";
        }
        else
        {
            lblmsg.Text = " Enter prope Data..";

        }
    }
}
