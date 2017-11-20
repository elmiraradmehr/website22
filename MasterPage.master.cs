using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
   
        
    }

    /*  protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
      {
          Label1.Text = "صفحه اصلی";
        
      }
      protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
      {

          Label1.Text = "آپلود";
          Response.Redirect("upload.aspx");
      }
      protected void ImageButton1_Click2(object sender, ImageClickEventArgs e)
      {
          Label1.Text = "مدیریت";
          Response.Redirect("~/admin/Default2.aspx");
      }

      protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
      {
          Label1.Text = "عضویت";
          Response.Redirect("login.aspx");
         
      }
      protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
      {
          Label1.Text="تماس با ما";
          Response.Redirect("contact.aspx");
      }
      protected void AdRotator3_AdCreated(object sender, AdCreatedEventArgs e)
      {

      }



      protected void Button5_Click(object sender, EventArgs e)
      {//1
     
      }//1

      protected void Button6_Click(object sender, EventArgs e)
      {
          Response.Redirect("~/Login.aspx");
      }
      protected void btn_search_Click(object sender, EventArgs e)
      {
          Response.Redirect("search.aspx?search=" + txt_search.Text);
      }*/
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btn_search_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("search.aspx?search="+TextBox1.Text);
    }
}

       

