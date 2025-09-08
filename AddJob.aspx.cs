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

public partial class AAddJob : System.Web.UI.Page
{
    CDS.ADDJOB_SELECTDataTable AJDT = new CDS.ADDJOB_SELECTDataTable();
    CDSTableAdapters.ADDJOB_SELECTTableAdapter AJAdapter = new CDSTableAdapters.ADDJOB_SELECTTableAdapter();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPostJOb_Click(object sender, EventArgs e)
    {
        int i = AJAdapter.Insert(Convert.ToInt32(Session["CID"].ToString()), txtCname.Text, DrpCategory.SelectedItem.Text, drpreqskill.SelectedItem.Text, DrpRole.SelectedItem.Text, drpQlf.SelectedItem.Text, txtOtherSkill.Text, Convert.ToInt32(drpmaxage.SelectedItem.Text), DrpMinSalary.SelectedItem.Text, drpjobLoc.SelectedItem.Text, txtworkinghour.Text, txtDescr.Text, Convert.ToDateTime(DrpDD.SelectedItem.Text + " " + DrpMM.SelectedItem.Text + " " + DrpYY.SelectedItem.Text));
        if (i == 1)
        {
            lblJmsg.Text = "Job Add Sucsseccefully";
        }
        else
        {
            lblJmsg.Text = "Enter right Details..";
        }
    }
}
