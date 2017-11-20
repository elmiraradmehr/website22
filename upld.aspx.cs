using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class upld : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(User.Identity.IsAuthenticated==false)//اگر کاربر ورود نکرده باشد به صفحه statrtpage هدایت میشود
        {
            Response.Redirect("startpage.aspx");

        }
        else { }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)//اگر فیلی برای آپلود موجود است
        {
            if (!extension(FileUpload1.FileName))//اگر پسوند فایل پشتیبانی نمیشود
            {
                lbl_up.Text = "فرمت فایل شما پشتیبانی نمیشود.";
            }

            else
            {
                uploadTableAdapters.uploadTableAdapter uta = new uploadTableAdapters.uploadTableAdapter();//اتصال به دیتاست upload
                uta.InsertQueryupload(txt_up.Text, "http://localhost/site" + FileUpload1.FileName);//استفاده از کويری insertupload
                FileUpload1.SaveAs(Server.MapPath("~/upload" + FileUpload1.FileName));// ذخیره با استفاده از آدرس فیزیکی
                lbl_up.Text = "فایل شما با موفقیت ارسال گردید.";
                GridView1.DataBind();//نمایش
                txt_up.Text = " ";

            }


        }
    }
    public bool extension(string exe)
    {
        string e = Path.GetExtension(exe);//پسوند فایل
        switch (e.ToLower())
        {
            case ".mp4": return true;
            case ".wmv": return true;
            case ".mov": return true;
            case ".avi": return true;
            case ".swf": return true;
            case ".vob": return true;
            case ".pdf": return true;
            case ".txt": return true;
            case ".doc": return true;

            default: return false;
        }
    }
}