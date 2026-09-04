using System;

namespace LeaveApplication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack && Request.Cookies["UserName"] != null)
            {
                txtUserName.Text = Request.Cookies["UserName"].Value;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text != "" && txtPassword.Text != "")
            {
                Session["UserName"] = txtUserName.Text;

                if (chkRememberMe.Checked)
                {
                    Response.Cookies["UserName"].Value = txtUserName.Text;
                    Response.Cookies["UserName"].Expires =
                        DateTime.Now.AddDays(7);
                }

                Response.Redirect("Default.aspx");
            }
            else
            {
                lblMessage.Text = "Please enter username and password.";
            }
        }
    }
}