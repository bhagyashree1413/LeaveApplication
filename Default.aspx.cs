using System;

namespace LeaveApplication
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                lblUsername.Text = Session["UserName"].ToString();
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = Calendar1.SelectedDate.ToShortDateString();

            Session["LeaveDate"] =
                Calendar1.SelectedDate.ToShortDateString();
        }

        protected void btnApplyLeave_Click(object sender, EventArgs e)
        {
            Response.Redirect("Leave.aspx");
        }
    }
}