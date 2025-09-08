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

public partial class STD_Message : System.Web.UI.Page
{
    //DS_MSG.SELECT_MSG_STDDataTable MDT = new DS_MSG.SELECT_MSG_STDDataTable();
    //DS_MSGTableAdapters.SELECT_MSG_STDTableAdapter MAdapter = new DS_MSGTableAdapters.SELECT_MSG_STDTableAdapter();
    DS_MSG.SELECT_MSG_STDDataTable MDT = new DS_MSG.SELECT_MSG_STDDataTable();
    DS_MSGTableAdapters.SELECT_MSG_STDTableAdapter MAdapter = new DS_MSGTableAdapters.SELECT_MSG_STDTableAdapter();
    CDS.COMPANY_SELECTDataTable CDT = new CDS.COMPANY_SELECTDataTable();
    CDSTableAdapters.COMPANY_SELECTTableAdapter CAdapter = new CDSTableAdapters.COMPANY_SELECTTableAdapter();

    SDS.Student_SelectDataTable SDT = new SDS.Student_SelectDataTable();
    SDSTableAdapters.Student_SelectTableAdapter SAdapter = new SDSTableAdapters.Student_SelectTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["to"].ToString() != null)
            { Label1.Text = Session["to"].ToString(); }
            else { Label1.Text = Session["ssid"].ToString(); }
            
        
        }
        

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        //CDT = CAdapter.selectBY_CID(Convert.ToInt32(Session["CID"].ToString()));

        //SDT = SAdapter.SELECT_STD_BYID(Convert.ToInt32(Session["ssid"].ToString()));
        //int a = MAdapter.Insert(Session["email"].ToString(),Label1.Text, txtmessage.Text);
        if (Session["to"].ToString() == null)
        {
            int a = MAdapter.Insert( Session["email"].ToString(),Label1.Text, txtmessage.Text, txtName.Text);
            if (a == 1)
            {
                lblsendmsg.Text = "Message Send Successfully..";
                txtmessage.Text = "";
            }
        }
        else
        {
            int a = MAdapter.Insert( Session["email"].ToString(),Label1.Text, txtmessage.Text, txtName.Text);
            if (a == 1)
            {
                lblsendmsg.Text = "Message Send Successfully..";
                txtmessage.Text = "";
            }
        }
    }
}
