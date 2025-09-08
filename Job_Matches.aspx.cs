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

public partial class Job_Matches : System.Web.UI.Page
{
   
    SDS.SELECT_ADDEDUDataTable EDT = new SDS.SELECT_ADDEDUDataTable();
    SDSTableAdapters.SELECT_ADDEDUTableAdapter EAdapter = new SDSTableAdapters.SELECT_ADDEDUTableAdapter();

    CDS.ADDJOB_SELECTDataTable CDT = new CDS.ADDJOB_SELECTDataTable();
    CDSTableAdapters.ADDJOB_SELECTTableAdapter CAdapter = new CDSTableAdapters.ADDJOB_SELECTTableAdapter();

    DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable AJDT = new DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable();
    DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter AJAdapter = new DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
           if (Page.IsPostBack == false)
            {
              

                EDT = EAdapter.SELECT_JOBMATCH_BYErNo(Session["erno"].ToString());
                string edu = EDT.Rows[0]["Education"].ToString();
                string branch = EDT.Rows[0]["Branch"].ToString();
                string skill = EDT.Rows[0]["Skill"].ToString();

              
                CDT = CAdapter.SELECT_JOBMATCH_BYEDU(edu, branch, skill);
               if(CDT.Rows.Count==0)
               {
               lblApply.Text="No Job Found as per your profile.";
               }
               else
               {
               DataList3.DataSource = CDT;
                DataList3.DataBind();
               }

             }
              
    }



    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewmore")
        {
            Session["JID"] = e.CommandArgument.ToString();
            Response.Redirect("ViewMoreCompanyDetail.aspx");
        }
        else if (e.CommandName == "apply")
        {

            int jid = Convert.ToInt32(e.CommandArgument.ToString());
            CDT = CAdapter.SELECT_ADDJOB_BYJID(jid);

            int cid = Convert.ToInt32(CDT.Rows[0]["CID"].ToString());
            int sid = Convert.ToInt32(Session["sid"].ToString());

            AJDT = AJAdapter.SELECT_APPLYJOB_BYJID_SID(jid, sid);
            if (AJDT.Rows.Count == 0)
            {
                int ist = AJAdapter.Insert(jid, cid, sid);
                lblApply.Text = " Job Apply succssufuly..";
            }
            else
            {
                lblApply.Text = "This job is allready applied ..";
            }
            

        }
    }
}
