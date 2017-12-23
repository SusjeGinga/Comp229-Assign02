using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign02
{
    public partial class ThankYouPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["accessable"] != null)
            {
                string loadable = Session["accessable"].ToString();
                if (loadable != "true")
                {
                    Response.Redirect("SurveyPage.aspx");
                }
            }
            else
            {
                Response.Redirect("SurveyPage.aspx");
            }

            program.Text= Session["Program"].ToString();
            fulltime.Text = Session["Fulltime"].ToString();
            semester.Text = Session["Semester"].ToString();
            student.Text = Session["Student"].ToString();
            email.Text = Session["Email"].ToString();
            comment.Text = Session["Comment"].ToString();

            Session["accessable"] = false;
        }
    }
}