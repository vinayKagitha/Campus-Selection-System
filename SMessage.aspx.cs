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

public partial class SMessage : System.Web.UI.Page
{
    DS_MSG.SELECT_MSG_STDDataTable MDT = new DS_MSG.SELECT_MSG_STDDataTable();
    DS_MSGTableAdapters.SELECT_MSG_STDTableAdapter MAdapter = new DS_MSGTableAdapters.SELECT_MSG_STDTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["to"].ToString();
    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        int a = MAdapter.Insert(Label1.Text, Session["email"].ToString(), txtmessage.Text, txtName.Text);
        if (a == 1)
        {
            lblsendmsg.Text = "Message Send Successfully..";
            txtmessage.Text = "";
        }
    }
}
