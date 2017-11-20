using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class admin_categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_cat_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            if (!extension(FileUpload1.FileName))
            {
                lbl_cat.Text = "فرمت فایل شما پشتیبانی نمیشود.";
            }
            else
            {
                categorieTableAdapters.tbl_categoriesTableAdapter cta = new categorieTableAdapters.tbl_categoriesTableAdapter();
                cta.InsertCat(txt_cat.Text, FileUpload1.FileName);
                FileUpload1.SaveAs(MapPath("~/imgdef/" + FileUpload1.FileName));
                GridView1.DataBind();
                lbl_cat.Text = "ثبت موضوع با موفقیت انجام شد.";
                txt_cat.Text = " ";
            }


        }
    }
  public bool  extension(string a)
    {
        string e = Path.GetExtension(a);
        switch (e.ToLower())
        {
            case ".jpeg": return true;
            case ".gif": return true;
            case ".png": return true;
            case ".jpg": return true;

            default: return false;
        }
    }
}