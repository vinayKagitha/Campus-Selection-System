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

public partial class SearchSTD : System.Web.UI.Page
{
    DS_SEARCH_STD.SELECT_ADDEDUDataTable SDT = new DS_SEARCH_STD.SELECT_ADDEDUDataTable();
    DS_SEARCH_STDTableAdapters.SELECT_ADDEDUTableAdapter Sadapter = new DS_SEARCH_STDTableAdapters.SELECT_ADDEDUTableAdapter();

    SDS.Student_SelectDataTable SSDT = new SDS.Student_SelectDataTable();
    SDSTableAdapters.Student_SelectTableAdapter SSAdapter = new SDSTableAdapters.Student_SelectTableAdapter();

    SDS.SELECT_STD_BYERNODataTable SEnrDT = new SDS.SELECT_STD_BYERNODataTable();
    SDSTableAdapters.SELECT_STD_BYERNOTableAdapter SEnrAdapter = new SDSTableAdapters.SELECT_STD_BYERNOTableAdapter();
    //SDS.Student_SelectDataTable SSDT = new SDS.Student_SelectDataTable();
    //SDSTableAdapters.Student_SelectTableAdapter SSAdapter = new SDSTableAdapters.Student_SelectTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["ssid"] = null;
        try
        {
            if (Page.IsPostBack == false)
            {
                SDT = Sadapter.Select_Search_STD(Session["Cate"].ToString(), Session["Quali"].ToString(), Session["Skill"].ToString());
                Session["resume"] = SDT.Rows[0]["Resume"].ToString();
                DataList3.DataSource = SDT;
                DataList3.DataBind();
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.ToString();
        }
        
    }
   
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewmore")
        {
            Response.Redirect(Session["resume"].ToString());
            Session["resume"] = "";

        }

        else if (e.CommandName == "sendmsg")
        {

           // SDT = Sadapter.Select_Search_STD(Session["Cate"].ToString(), Session["Quali"].ToString(), Session["Skill"].ToString());
           // string er = SDT.Rows[0]["EnrallNo"].ToString();
            SEnrDT = SEnrAdapter.SelectBY_Enroll(e.CommandArgument.ToString());
            //SSDT = SSAdapter.SELECT_STD_ErNo("100160107062");
            Session["ssid"] = SEnrDT.Rows[0]["EmailId"].ToString();
            Response.Redirect("SMessage.aspx");
        }
    }
}
