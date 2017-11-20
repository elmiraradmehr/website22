using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class admin_catimg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public bool checktype(string a)
    {
        string ext = Path.GetExtension(a);
        switch (ext.ToLower())
        {
            case ".jpg": return true;
            case ".mpg": return true;
            case ".jpeg": return true;
            case ".gif": return true;
            case ".png": return true;
            default: return false;



        }
    }
    protected void btn_snd_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (!checktype(FileUpload1.FileName))
            {
                lbl_img.Text = "فایل شما ارسال نشد.";

            }
            else
            {
                DateTime date = DateTime.Now;
                string vidnews = FileUpload1.FileName;

                catimgTableAdapters.catimgTableAdapter ctia = new catimgTableAdapters.catimgTableAdapter();
                ctia.InsertQueryCatimg(txt_img.Text, FileUpload1.FileName, int.Parse(DropDownList1.SelectedValue));
                lbl_img.Text = "تبریک فایل شما با موفقیت ارسال شد ";
                FileUpload1.SaveAs(MapPath("~/img/" + FileUpload1.FileName));
                GridView1.DataBind();
                txt_img.Text = " ";



            }
        }
    }
}