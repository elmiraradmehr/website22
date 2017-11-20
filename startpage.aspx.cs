using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class startpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        int userId = 0;
        
        using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True"))//اتصال به پایگاه داده
        {
            using (SqlCommand cmd = new SqlCommand("Validate_User"))//اعتبار سنجی کاربر با استفاره از پروسیجر
            {
                cmd.CommandType = CommandType.StoredProcedure;//استفاده از پروسیجر
                cmd.Parameters.AddWithValue("@Username", Login1.UserName);
                cmd.Parameters.AddWithValue("@Password", Login1.Password);
                cmd.Connection = con;
                con.Open();
                userId = Convert.ToInt32(cmd.ExecuteScalar());
                con.Close();
            }
            switch (userId)//بر اساس userid
            {
                case -1:
                    Login1.FailureText = "نام کاربری یا پسورد نا معتبر است.";
                    break;
                case -2:
                    Login1.FailureText = "حساب کاربری فعال نشده است.";
                    break;
                default:
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                    break;
            }
        }
   
    }
}