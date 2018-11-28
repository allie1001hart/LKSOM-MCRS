using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multicultural_Recruitment_System
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCreate_Click(object sender, EventArgs e)
        {
            panEmail.Visible = true;

            if (ddlEmailTemplate.SelectedValue == "Deadline")
            {
                panDemoDeadline.Visible = true;
                panDemoEmpty.Visible = false;
                panDemoThankYou.Visible = false;
                panDemoWelcome.Visible = false;
            }
            else if (ddlEmailTemplate.SelectedValue == "Empty")
            {
                panDemoDeadline.Visible = false;
                panDemoEmpty.Visible = true;
                panDemoThankYou.Visible = false;
                panDemoWelcome.Visible = false;
            }
            else if (ddlEmailTemplate.SelectedValue == "ThankYou")
            {
                panDemoDeadline.Visible = false;
                panDemoEmpty.Visible = false;
                panDemoThankYou.Visible = true;
                panDemoWelcome.Visible = false;

            }
            else if (ddlEmailTemplate.SelectedValue == "Welcome")
            {
                panDemoDeadline.Visible = false;
                panDemoEmpty.Visible = false;
                panDemoThankYou.Visible = false;
                panDemoWelcome.Visible = true;

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dash.aspx");
        }
    }
}