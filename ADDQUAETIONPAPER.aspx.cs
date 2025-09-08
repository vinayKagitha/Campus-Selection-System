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

public partial class ADDQUAETIONPAPER : System.Web.UI.Page
{
    DS_EXAM.SELECT_QPAPERDataTable QDT = new DS_EXAM.SELECT_QPAPERDataTable();
    DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter QAdapter = new DS_EXAMTableAdapters.SELECT_QPAPERTableAdapter();

    CDS.COMPANY_SELECTDataTable CDT = new CDS.COMPANY_SELECTDataTable();
    CDSTableAdapters.COMPANY_SELECTTableAdapter CAdapter = new CDSTableAdapters.COMPANY_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {

            QDT = QAdapter.SELECT_QPAPER_BYCID(Convert.ToInt32(Session["CID"].ToString()));
            GridViewADDQPAPER.DataSource = QDT;
            GridViewADDQPAPER.DataBind();
            
            CDT = CAdapter.SELECT_COMPANY();
            txtCmpName.Text = Session["ccname"].ToString();
        }
        
    }

    protected void btnADDQppr_Click(object sender, EventArgs e)
    {
       
        int a = QAdapter.Insert(Convert.ToInt32(Session["CID"].ToString()),txtCmpName.Text, txtqpaper.Text, Convert.ToDouble(txttatalmarks.Text));
        QDT = QAdapter.SELECT_QPAPER();
        GridViewADDQPAPER.DataSource = QDT;
        GridViewADDQPAPER.DataBind();
    }
    protected void GridViewADDQPAPER_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            int C = Convert.ToInt32(e.CommandArgument.ToString());
            int d=QAdapter.Delete(C);
            GridViewADDQPAPER.EditIndex = -1;
            QDT = QAdapter.SELECT_QPAPER();
            GridViewADDQPAPER.DataSource = QDT;
            GridViewADDQPAPER.DataBind();
            Session["qpid"] = QDT.Rows[0]["QPID"].ToString();

        }
    }
    protected void btnQpaper_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADDQUAETIONPAPER.aspx");
    }
    protected void btnQstion_Click(object sender, EventArgs e)
    {
        Response.Redirect("ADDQuestion.aspx");
    }
    
}
