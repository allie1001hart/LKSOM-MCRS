using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multicultural_Recruitment_System
{
    public partial class Dash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnEmail_Click(object sender, EventArgs e)
        {
            Response.Redirect("Email.aspx");
        }
        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            Response.Redirect("Email.aspx");
        }
    }
}