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

public partial class ViewMoreCompanyDetail : System.Web.UI.Page
{
    CDS.ADDJOB_SELECTDataTable CDT = new CDS.ADDJOB_SELECTDataTable();
    CDSTableAdapters.ADDJOB_SELECTTableAdapter CAdapter = new CDSTableAdapters.ADDJOB_SELECTTableAdapter();

    DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable AJDT = new DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable();
    DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter AJAdapter = new DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter();

    DS_MSG.SELECT_MSG_STDDataTable MSDT = new DS_MSG.SELECT_MSG_STDDataTable();
    DS_MSGTableAdapters.SELECT_MSG_STDTableAdapter MSAdapter = new DS_MSGTableAdapters.SELECT_MSG_STDTableAdapter();
    //DS_MSG.SELECT_MSG_BYCMPDataTable MSDT = new DS_MSG.SELECT_MSG_BYCMPDataTable();
    //DS_MSGTableAdapters.SELECT_MSG_BYCMPTableAdapter MSAdapter = new DS_MSGTableAdapters.SELECT_MSG_BYCMPTableAdapter();

    CDS.COMPANY_SELECTDataTable ComDT = new CDS.COMPANY_SELECTDataTable();
    CDSTableAdapters.COMPANY_SELECTTableAdapter ComAdapter = new CDSTableAdapters.COMPANY_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter.SELECT_ADDJOB_BYJID(Convert.ToInt32(Session["JID"].ToString()));

            //CDT = CAdapter.SELECT_ADDJOB_BYJID(Convert.ToInt32(Session["JID"].ToString()));
            lblCompanyName0.Text = CDT.Rows[0]["Company_Name"].ToString();
            lblAge.Text = CDT.Rows[0]["Max_Age"].ToString();
            lblCategory.Text = CDT.Rows[0]["JobCategory"].ToString();
            lblCompanyName.Text = CDT.Rows[0]["Company_Name"].ToString();
            lblDesc.Text = CDT.Rows[0]["JobDescription"].ToString();
            lblExtraSkill.Text = CDT.Rows[0]["Extra_Skill"].ToString();
            lblJobLocation.Text = CDT.Rows[0]["JobLocaton"].ToString();
            lblLastApplyDate.Text = CDT.Rows[0]["Last_ApplyDate"].ToString();
            lblMinQualification.Text = CDT.Rows[0]["Min_Qualification"].ToString();
            lblMinSalary.Text = CDT.Rows[0]["ExpectedSalary"].ToString();
            lblRole.Text = CDT.Rows[0]["Role"].ToString();
            lblSkill.Text = CDT.Rows[0]["RequiredSkill"].ToString();
            lblWorkingHour.Text = CDT.Rows[0]["Working_hour"].ToString();

            lblsendmsg.Text = "";
            ViewState["v"] = CDT.Rows[0]["cid"].ToString();
        }

    }
    protected void btnPostJOb_Click(object sender, EventArgs e)
    {
        lblsendmsg.Text = "";

        int jid = Convert.ToInt32(Session["JID"].ToString());
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
    protected void btnsend_Click(object sender, EventArgs e)
    {
        ComDT = ComAdapter.selectBY_CID(Convert.ToInt32( ViewState["v"].ToString()));
        int a = MSAdapter.Insert(Session["email"].ToString(), ComDT.Rows[0]["EmailId"].ToString(), txtmessage.Text, txtnm.Text);
        if (a == 1)
        {
            lblsendmsg.Text = "Message send successfully";
            txtmessage.Text = "";
        }
    }
}
