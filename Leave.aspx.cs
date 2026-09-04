using System;

namespace LeaveApplication
{
    public partial class Leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                txtEmployeeName.Text =
                    Session["UserName"].ToString();

                if (Session["LeaveDate"] != null)
                {
                    txtLeaveDate.Text =
                        Session["LeaveDate"].ToString();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblOutput.Text =
                "Leave application submitted successfully.";
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }
    }
}