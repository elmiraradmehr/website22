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
using System.IO;

public partial class vorud : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     
    }
    protected void Unnamed6_Click(object sender, EventArgs e)
    {
           int userId = 0;
       
        using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True"))//انصال به پایگاه داده
         {
             using (SqlCommand cmd = new SqlCommand("Insert_User"))// استفاده از پروسیجر insert_userبرای ثبت نام کاربر
             {
                 using (SqlDataAdapter sda = new SqlDataAdapter())
                 {
                     cmd.CommandType = CommandType.StoredProcedure;//استفاده از پروسیجر
                     cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());//نام کاربری
                     cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());//رمز عبور
                     cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());//ایمیل کاربران
                     cmd.Connection = con;
                     con.Open();
                     userId = Convert.ToInt32(cmd.ExecuteScalar());
                     con.Close();
                 }
             }
             string message = string.Empty;
             switch (userId)
             {
                 case -1:
                     message = "نام کاربری موجود می باشد لطفا نام کاربری جدیدی وارد نمایید";
                     break;
                 case -2:
                     message = "آدرس الکترونیکی موجود می باشد";
                     break;
                 default:
                     message = "ثبت نام با موفقیت انجام ایمیل فعال سازی فرستاده شد";
                     SendActivationEmail(userId);
                     break;
             }
             ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);//نمایش پنجره ها در بخش ثبت نام که پیام همای بالا را نمایش میدهد
         }
     }
 
     private void SendActivationEmail(int userId)
     {
        
         string activationCode = Guid.NewGuid().ToString();//به دست آوردن کد فعال سازی با استفاده ازتابع برای توللید عدد منحصر به فرد guid 
         using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|Database.mdf;Integrated Security=True"))
         {
             using (SqlCommand cmd = new SqlCommand("INSERT INTO UserActivation VALUES(@UserId, @ActivationCode)"))//درج آیدی کاربر و کد فعال سازی در جدول useractivation
             {
                 using (SqlDataAdapter sda = new SqlDataAdapter())
                 {
                     cmd.CommandType = CommandType.Text;
                     cmd.Parameters.AddWithValue("@UserId", userId);
                     cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                     cmd.Connection = con;
                     con.Open();
                     cmd.ExecuteNonQuery();
                     con.Close();
                 }
             }
         }
         MailMessage mm = new MailMessage("elmiraradmehr73@gmail.com", txtEmail.Text);//پیغام ایمیل را نشان میدهد
        
             mm.Subject = "Account Activation";//موضوع
             string body = "سلام " + txtUsername.Text.Trim() + ",";//متن 
             body += "<br /><br />لطفا روی لینک کلیک کنید تا فعال سازی انجام شود";
             body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("vorud.aspx","active.aspx?ActivationCode=" + activationCode) + "'>برای فعال سازی حساب کاربری کلیک نمایید</a>";
             body += "<br /><br />با سپاس";
             mm.Body = body;
             mm.IsBodyHtml = true;//استفاده از کد های html
             SmtpClient smtp = new SmtpClient("smtp.gmail.com");//اطلاعات کاربر را میدهیم
             //در صورتی که از جیمیل استفاده کنیدsmtp.gmail.com
             smtp.EnableSsl = true;//استفاده از پروتکل امن که برای جیمیل true است
             smtp.UseDefaultCredentials = true;
             NetworkCredential NetworkCred = new NetworkCredential("elmiraradmehr73@gmail.com", "el");//برای اجازه دسترسی به حساب ایمیل باید نام کاربری و رمز عبور را داشته باشیمکه از طریق این کلاس پیاده سازی میشود
            // smtp.UseDefaultCredentials = true;
             smtp.Credentials = NetworkCred;
             smtp.Port = 587;//gmail
             
             smtp.Send(mm);
         }
     }
 
       



       
    

