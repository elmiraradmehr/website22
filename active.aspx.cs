using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
public partial class active : System.Web.UI.Page
{//1
    protected void Page_Load(object sender, EventArgs e)
    {//2
        if (!this.IsPostBack)
        {//3

            string activationCode = Request.QueryString["ActivationCode"].ToString();//کد فعال سازی
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True"))
            {//4
                using (SqlCommand cmd = new SqlCommand("DELETE FROM  UserActivation WHERE ActivationCode = @ActivationCode"))//در صورتی که کاربر در ایمیل خود روی لینک فعال سازی کلیک کنددر این جدول حذف میشودمتناسب با شرط موجود. 
                {//5
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {//6
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                        cmd.Connection = con;
                        con.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        con.Close();
                        if (rowsAffected == 1)
                        {//7

                            Label1.Text = "با تشکر از ثبت نام شما،حساب کاربریتان با موفقیت فعال گردید. ";
                            Label2.Text = "اکنون شما میتوانید از امکانات سایتIRAN FILM ACADEMI استفاده کنید و جدیدترین اخبار ایران را بیابید.";
                            Label3.Text = "امیدواریم لحظات خوبی را در IRAN FILM ACADEMI  داشته باشید.";


                        }//7
                        else
                        {//8
                            Label1.Text = "کد فعال سازی شما نامعتبر است،لطفا مجددا تلاش کنید.";


                        }//8
                    }//6
                }//5
            }
        }
    }
}
            
               
    
