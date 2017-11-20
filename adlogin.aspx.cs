using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.Security;

public partial class adlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login2_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True");//اتصال به پایگاه داده

        string MyQuery = "select * from [tbl_adlogin] where Username='" + txt_name.Text + "'and Password='" + txt_pass.Text + "'";//چک کردن متناسب با نام کاربری و پسورد برای ورود به پنل مدیریت
        SqlCommand cmd = new SqlCommand(MyQuery, connection);
        SqlDataReader dr;
        connection.Open();
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {//2
            dr.Read();
            if (dr["type"].ToString() == "1")//اگر تایپ یک باشد وارد پنل مدیریت میشود در غیر این صورت به دیفالت هدایت میشود 
            {//3
                Response.Redirect("admin/Default2.aspx");
            }//3
            if (dr["type"].ToString() == "2")
            {//4
                Response.Redirect("~/Default.aspx");
            }//4

        }//2

        FormsAuthentication.RedirectFromLoginPage(txt_name.Text, CheckBox2.Checked);

        connection.Close();
        txt_name.Text = " ";
        txt_pass.Text = " ";


    }
}