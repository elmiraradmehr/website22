using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;



public partial class admin_news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }

    public bool checktypeimg(string b)
    {

        string ext = Path.GetExtension(b);

        switch (ext.ToLower())
        {
            case ".jpeg": return true;
            case ".gif": return true;
            case ".png": return true;
            case ".jpg": return true;
            default: return false;



        }

    }
    public bool checktype(string a)
    {
        string ext = Path.GetExtension(a);
        switch(ext.ToLower())
        {
            case ".mp4": return true;
            case ".WMV": return true;
            case ".MOV": return true;
            case ".AVI": return true;
            case "swf": return true;
            case ".vob": return true;
            default: return false;



        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
            if (!checktype(FileUpload1.FileName)&!checktypeimg(FileUpload2.FileName))
            {
                Label1.Text = "فایل شما ارسال نشد.";

            }
            else
            {
                DateTime date = DateTime.Now;
                string vidnews = FileUpload1.FileName;


                adnewTableAdapters.TableTableAdapter anta = new adnewTableAdapters.TableTableAdapter();
                anta.InsertQueryAdminNews(txt_onvan.Text, txt_desc.Text, date, 0, int.Parse(drop_cat.SelectedValue), txt_writer.Text, vidnews,FileUpload2.FileName);
                Label1.Text = "تبریک فایل شما با موفقیت ارسال شد ";
                FileUpload1.SaveAs(MapPath("~/vid/" + FileUpload1.FileName));
                FileUpload2.SaveAs(MapPath("../imgadmindef/" + FileUpload2.FileName));
                GridView1.DataBind();
                txt_onvan.Text = " ";
                txt_desc.Text = " ";
                txt_writer.Text = " ";

            }
        }
    }
}