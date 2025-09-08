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

public partial class HRM_CLogin : System.Web.UI.Page
{
    SDS.Student_SelectDataTable SDT = new SDS.Student_SelectDataTable();
    SDSTableAdapters.Student_SelectTableAdapter SAdapter = new SDSTableAdapters.Student_SelectTableAdapter();

    SDS.SELECT_ADDEDUDataTable SEDT = new SDS.SELECT_ADDEDUDataTable();
    SDSTableAdapters.SELECT_ADDEDUTableAdapter SEAdapter = new SDSTableAdapters.SELECT_ADDEDUTableAdapter();

    
    CDS.ADDJOB_SELECTDataTable CDT = new CDS.ADDJOB_SELECTDataTable();
    CDSTableAdapters.ADDJOB_SELECTTableAdapter Cadapter = new CDSTableAdapters.ADDJOB_SELECTTableAdapter();


    SDS.STUDENT_SELECT_LOGINDataTable SLDT = new SDS.STUDENT_SELECT_LOGINDataTable();
    SDSTableAdapters.STUDENT_SELECT_LOGINTableAdapter SLadapter = new SDSTableAdapters.STUDENT_SELECT_LOGINTableAdapter();

    DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable AJDT = new DS_ApplyJob.SELECT_APPLYJOB_BYSIDDataTable();
    DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter AJAdapter = new DS_ApplyJobTableAdapters.SELECT_APPLYJOB_BYSIDTableAdapter();




    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            

            SEDT = SEAdapter.SELECT_ADDEDUCATION();
            lblCname.Text = SEDT.Rows[0]["CollegeName"].ToString();
            lblEnrlNo2.Text = SEDT.Rows[0]["EnrallNo"].ToString();
            lblSem.Text = SEDT.Rows[0]["semester"].ToString();
            lblEdu.Text = SEDT.Rows[0]["Education"].ToString();
            lblBrnnch.Text = SEDT.Rows[0]["Branch"].ToString();
            lblpassyr.Text = SEDT.Rows[0]["PassYear"].ToString();
            lblCPI.Text = SEDT.Rows[0]["CPI"].ToString();
            lblCGPA.Text = SEDT.Rows[0]["CGPA"].ToString();
            lblskill.Text = SEDT.Rows[0]["Skill"].ToString();
            lblexskill.Text = SEDT.Rows[0]["ExtraSkill"].ToString();

            CDT = Cadapter.SELECT_ADDJOB();
            CDT = Cadapter.SELECT_JOB_BYBRANCH(SEDT.Rows[0]["Branch"].ToString());
            DataList3.DataSource = CDT;
            DataList3.DataBind();
            
            MultiView1.ActiveViewIndex = 2;
            
           
        }

    }
    //protected void bind()
    //{
    //    SDT = SAdapter.SELECT_STD_BYID(Convert.ToInt32(Session["SID"].ToString()));
    //    DetailsView1.DataSource = SDT;
    //    DetailsView1.DataBind();
    //}
    protected void lnkviewprofile_Click(object sender, EventArgs e)
    {
        lblApply.Text = "";
        MultiView1.ActiveViewIndex = 0;
        SLDT = SLadapter.SELECT_STD_BYID(Convert.ToInt32(Session["SID"].ToString()));
        lblFName.Text = SLDT.Rows[0]["FName"].ToString();
        lblLName.Text = SLDT.Rows[0]["LName"].ToString();

        lblSadd.Text = SLDT.Rows[0]["Address"].ToString();
        lblSCity.Text = SLDT.Rows[0]["City"].ToString();
        lblSState.Text = SLDT.Rows[0]["State"].ToString();
        lblSPin.Text = SLDT.Rows[0]["PinCode"].ToString();
        lblSDOB.Text = SLDT.Rows[0]["Dob"].ToString();
        lblSGender.Text = SLDT.Rows[0]["Gender"].ToString();
        lblSMONO.Text = SLDT.Rows[0]["MobileNo"].ToString();
        lblSEid.Text = SLDT.Rows[0]["EmailId"].ToString();
        
        
    }
    protected void lnkEdu_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
    protected void lnkcngpass_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 4;
    }
    protected void lnkremove_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 5;
    }

    protected void btnCngpass_Click(object sender, EventArgs e)
    {
        lblApply.Text = "";
        //SDT = SAdapter.Select_changepass(txterlno.Text, txtoldpass.Text);
        SLDT = SLadapter.SELECT_STD_BYID(Convert.ToInt32(Session["SID"].ToString()));
        if (SLDT.Rows.Count > 0)
        {
            if (Session["spass"].ToString() == txtoldpass.Text)
            {
                if (txtNpass.Text == txtCNpass.Text)
                {
                    SAdapter.UPADATE_CHANGEPASS(txtNpass.Text);
                    lblmsg.Text = "password change successfully";
                    txtCNpass.Text = "";
                    txtNpass.Text = "";
                    txtoldpass.Text = "";                    
                }
                else
                {
                    lblmsg.Text = "confo pass does not match !!!";
                    txtNpass.Text = "";
                    txtCNpass.Text = "";

                }
            }
            else
            {
                lblmsg.Text = "current pass does not match !! ";
                txtCNpass.Text = "";
                txtNpass.Text = "";
                txtoldpass.Text = "";
            }
         }

    }
    protected void btnremoveacnt_Click(object sender, EventArgs e)
    {
        lblApply.Text = "";
        SDT = SAdapter.SELECT_STD_BYID(Convert.ToInt32(Session["SID"].ToString()));
        if (SDT.Rows.Count > 0)
        {
            SAdapter.Delete(txtenrlno1.Text);
           Response.Redirect("Home.aspx");

        }
    }
    protected void lnkViewresume_Click(object sender, EventArgs e)
    {
        SEDT = SEAdapter.SELECT_ADDEDU_BYSID(Convert.ToInt32(Session["SID"].ToString()));
        Response.Redirect("~/Resume/"+SEDT.Rows[0]["Resume"].ToString());
    }
    
    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "apply")
        {

            int jid = Convert.ToInt32(e.CommandArgument.ToString());
            CDT = Cadapter.SELECT_ADDJOB_BYJID(jid);
            
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
            lblApply.Text="This job is allready applied ..";
            }
        }
        else if (e.CommandName == "viewmore")
        {
            Session["JID"] = Convert.ToInt32(e.CommandArgument.ToString());
        Response.Redirect("ViewMoreCompanyDetail.aspx");

        }
    }

    protected void btnSProfileEdit_Click(object sender, EventArgs e)
    {
        lblApply.Text = "";
        MultiView1.ActiveViewIndex = 1;   
        SLDT = SLadapter.SELECT_STD_BYID(Convert.ToInt32(Session["SID"].ToString()));
        txtSEName.Text = SLDT.Rows[0]["FName"].ToString();
        txtSELName.Text = SLDT.Rows[0]["LName"].ToString();
        txtSEAdd.Text = SLDT.Rows[0]["Address"].ToString();
        txtSECity.Text = SLDT.Rows[0]["City"].ToString();
        txtSEState.Text = SLDT.Rows[0]["State"].ToString();
        txtSEPincode.Text = SLDT.Rows[0]["PinCode"].ToString();
        txtSEMONO.Text = SLDT.Rows[0]["MobileNo"].ToString();
        txtSEEId.Text = SLDT.Rows[0]["EmailId"].ToString();
        
    }
    protected void btnSUpDate_Click(object sender, EventArgs e)
    {
        lblApply.Text = "";
        int u = SAdapter.Update(Convert.ToInt32(Session["SID"].ToString()), txtSEName.Text, txtSELName.Text, txtSEAdd.Text, txtSECity.Text, txtSEState.Text, txtSEPincode.Text, txtSEMONO.Text, txtSEEId.Text);

        if (u == 1)
        {
            MultiView1.ActiveViewIndex = 0;
            lblSPUpade.Text = "Profile Update Successfully";
        }
    }
    protected void btnSEEDU_Click(object sender, EventArgs e)
    {
        lblApply.Text = "";
        if (SEFUResume.HasFile == true)
        {
            SEFUResume.SaveAs(Server.MapPath("~/Resume/" + SEFUResume.FileName.ToString()));
            string resume = "~/Resume/" + SEFUResume.FileName.ToString();

            int up = SEAdapter.Update(Convert.ToInt32(Session["SID"].ToString()), txtSECname.Text, drpSEsem.SelectedItem.Text, drpSEEdu.SelectedItem.Text, drpSEBranch.SelectedItem.Text, drpSEPassyear.SelectedItem.Text, Convert.ToDouble(txtSECPI.Text), Convert.ToDouble(txtSECGPA.Text), drpSEreqskill.SelectedItem.Text, txtSEExtraskill.Text, resume);
            if (up == 1)
            {
                MultiView1.ActiveViewIndex = 3;
                lblSPUpade.Text = "Data Update Successfully";
            }
            else
            {
                lblSEEDU.Text = "Enter Proper Data !!!";
            }
         }
        else
        { lblSPUpade.Text = "plz Select file "; }
    }
    protected void btnEDUEdit_Click(object sender, EventArgs e)
    {
        lblApply.Text = "";

        SEDT=SEAdapter.SELECT_ADDEDUCATION();
        txtSECname.Text = SEDT.Rows[0]["CollegeName"].ToString();
        drpSEsem.SelectedItem.Text = SEDT.Rows[0]["semester"].ToString();
        drpSEEdu.SelectedItem.Text = SEDT.Rows[0]["Education"].ToString();
        drpSEBranch.SelectedItem.Text = SEDT.Rows[0]["Branch"].ToString();
        drpSEPassyear.SelectedItem.Text = SEDT.Rows[0]["PassYear"].ToString();
        txtSECPI.Text = SEDT.Rows[0]["CPI"].ToString();
        txtSECGPA.Text = SEDT.Rows[0]["CGPA"].ToString();
        drpSEreqskill.SelectedItem.Text = SEDT.Rows[0]["Skill"].ToString();
        txtSEExtraskill.Text = SEDT.Rows[0]["ExtraSkill"].ToString();
        lblSEEDU.Text = "";
        MultiView1.ActiveViewIndex = 6;

    }
}
