using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class admin_infoad : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_snd_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (!extension(FileUpload1.FileName))
            {
               lbl_upld.Text = "فرمت فایل شما پشتیبانی نمیشود.";
            }

            else
            {
                infoadTableAdapters.infoadTableAdapter iata = new infoadTableAdapters.infoadTableAdapter();
                iata.InsertQueryinfoAd(txt_fname.Text, txt_lname.Text, txt_mail.Text, txt_addrs.Text, txt_admin.Text, FileUpload1.FileName);
                lbl_infoad.Text = "ادمین گرامی اطلاعات شما با موفقیت ثبت شد.";
                GridView1.DataBind();
                txt_fname.Text = " ";
                txt_lname.Text = " ";
                txt_mail.Text = " ";
                txt_addrs.Text = " ";
            }

        }
    }

    public bool extension(string exe)
    {
        string e = Path.GetExtension(exe);
        switch (e.ToLower())
        {
            case ".gif": return true;
            case ".jpeg": return true;
            case ".png": return true;
            case ".jpg": return true;
            
            default: return false;
        }
    }
}