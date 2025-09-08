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

public partial class ADDQuestion : System.Web.UI.Page
{
    DS_EXAM.SELECT_QUESTIONDataTable QDT = new DS_EXAM.SELECT_QUESTIONDataTable();
    DS_EXAMTableAdapters.SELECT_QUESTIONTableAdapter QAdapter = new DS_EXAMTableAdapters.SELECT_QUESTIONTableAdapter();
    
    DS_EXAM.SELECT_QPAPERDataTable QPDT = new DS_EXAM.SELECT_QPAPERDataTable();
    DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter QPAdapter = new DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            QDT = QAdapter.SELECT_QUESTION();
            GridViewADDQuestion.DataSource = QDT;
            GridViewADDQuestion.DataBind();

            QPDT = QPAdapter.SELECT_QPAPER();
            drpQpapername.DataSource = QPDT;
            drpQpapername.DataTextField = "QPaperName";
            drpQpapername.DataValueField = "QPID";
            drpQpapername.DataBind();
        }

    }
    protected void btnaddquestion_Click(object sender, EventArgs e)
    {
      
        int q = QAdapter.Insert(Convert.ToInt32(txtserial.Text), Convert.ToInt32(Session["CID"].ToString()), drpQpapername.SelectedItem.Text, txtEname.Text, txtquestion.Text, txta.Text, txtb.Text, txtc.Text, txtd.Text, DropDownListkey.SelectedItem.Text);
        QDT = QAdapter.SELECT_QUESTION();
        GridViewADDQuestion.DataSource = QDT;
        GridViewADDQuestion.DataBind();


    }
    protected void btnQpaper_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADDQUAETIONPAPER.aspx");
    }
    protected void btnQstion_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADDQuestion.aspx");
    }
    protected void GridViewADDQuestion_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int QID = Convert.ToInt32(e.CommandArgument.ToString());
            QAdapter.Delete(QID);
            QDT = QAdapter.SELECT_QUESTION();
            GridViewADDQuestion.DataSource = QDT;
            GridViewADDQuestion.DataBind();
        }
    }
}
