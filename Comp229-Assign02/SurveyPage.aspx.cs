using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class SurveyPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void sendBtn_Click(object sender, EventArgs e)
        {
            //Create session to pass to thank you page
            Session["accessable"] = "true";

            Session["Program"] = programTxt.Text;
            Session["Fulltime"] = fulltimeTxt.Text;
            Session["Semester"] = semesterTxt.Text;
            Session["Student"] = student.Text;
            Session["Email"] = emailTxt.Text;
            Session["Comment"] = commentTxt.Text;

            Response.Redirect("ThankYouPage.aspx");

        }
    }
}