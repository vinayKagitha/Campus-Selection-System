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

public partial class onlineExam : System.Web.UI.Page
{
    DS_EXAM.SELECT_QPAPERDataTable QPDT = new DS_EXAM.SELECT_QPAPERDataTable();
    DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter QPA = new DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter();

    DS_EXAM.SELECT_QUESTIONDataTable QUEDT = new DS_EXAM.SELECT_QUESTIONDataTable();
    DS_EXAMTableAdapters.SELECT_QUESTIONTableAdapter QUEAdapter = new DS_EXAMTableAdapters.SELECT_QUESTIONTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Session["qpid"].ToString() != null)
            {
                QUEDT = QUEAdapter.SELECT_QPAPER_BYCID_QPPR(Convert.ToInt32(Session["cid"].ToString()), Session["qppr"].ToString());
                fvquestion.DataSource = QUEDT;
                fvquestion.DataBind();
            }
        }
    }
    protected void fvquestion_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {
        Label ls = fvquestion.FindControl("lblserial") as Label;
        if (ls.Text == "10")
        {
            lblmsg.Text = "Test is complete !!!";
            //fvquestion.Visible = false;
        }
        else
        {
            QPDT = QPA.SELECT_QPAPER_BYQPID(Convert.ToInt32(Session["qpid"].ToString()));
            QUEDT = QUEAdapter.SELECT_QUESTION();
            
            RadioButton r1 = fvquestion.Row.FindControl("rda") as RadioButton;
            RadioButton r2 = fvquestion.Row.FindControl("rdb") as RadioButton;
            RadioButton r3 = fvquestion.Row.FindControl("rdc") as RadioButton;
            RadioButton r4 = fvquestion.Row.FindControl("rdd") as RadioButton;
            
            fvquestion.PageIndex = e.NewPageIndex;

            QUEDT = QUEAdapter.SELECT_QUESTION();
            fvquestion.DataSource = QUEDT;
            fvquestion.DataBind();


        }
    }
}
