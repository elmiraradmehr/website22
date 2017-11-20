using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class admin_moarfi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_imgm_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            if (!extension(FileUpload1.FileName))
            {
                lbl_img.Text = "فرمت فایل شما پشتیبانی نمیشود.";
            }
       
        else
        {
             moarefiTableAdapters.tbl_moarfiTableAdapter imta = new moarefiTableAdapters.tbl_moarfiTableAdapter();
             imta.InsertQueryimgm(FileUpload1.FileName, DateTime.Now, txt_title.Text, txt_name.Text);
             FileUpload1.SaveAs(MapPath("~/imgmoarefi/" + FileUpload1.FileName));
             lbl_img.Text = "فایل شما با موفقیت ارسال گردید.";
             GridView1.DataBind();
             txt_name.Text = "";
             txt_title.Text = "";
        }
        }
       
    }
    public bool extension(string exe)
    {
        string e = Path.GetExtension(exe);
        switch (e.ToLower())
        {
            case ".jpg": return true;
            case ".jpeg": return true;
            case ".png": return true;
            case ".mif": return true;

            default: return false;
        }
    }
}