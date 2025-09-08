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

public partial class CInbox : System.Web.UI.Page
{
    DS_MSG.SELECT_MSG_STDDataTable MDT = new DS_MSG.SELECT_MSG_STDDataTable();
    DS_MSGTableAdapters.SELECT_MSG_STDTableAdapter MAdapter = new DS_MSGTableAdapters.SELECT_MSG_STDTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            MDT = MAdapter.SELECT_MSG_BYCEID(Session["email"].ToString());
            if (MDT.Rows.Count > 0)
            {
                GridView1.DataSource = MDT;
                GridView1.DataBind();
                lblinbox.Text = MDT.Rows.Count.ToString();
            }
            else
            {
                lblmsg.Text = " Inbox is Empty !!";
            }
        }
    }

    protected void lnkbtnCheck_Click(object sender, EventArgs e)
    {
        if (lnkbtnCheck.Text == "Check")
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("chk");
                ch.Checked = true;

            }
            lnkbtnCheck.Text = "UnCheck";
        }
        else if (lnkbtnCheck.Text == "UnCheck")
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("chk");
                ch.Checked = false;

            }
            lnkbtnCheck.Text = "Check";

        }

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
        CheckBox ch = (CheckBox)GridView1.Rows[i].FindControl("chk");
        if (ch.Checked == true)
        {
          
        }
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            MAdapter.Delete(e.CommandArgument.ToString());
            MDT = MAdapter.SELECT_MSG_BYCEID(Session["email"].ToString());
            GridView1.DataSource = MDT;
            GridView1.DataBind();
            lblinbox.Text = MDT.Rows.Count.ToString();
        }
        else if (e.CommandName == "reply")
        {
            Session["to"] = e.CommandArgument.ToString();
            Response.Redirect("CMP_Message.aspx");
        }
    }
}
