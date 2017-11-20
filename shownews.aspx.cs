using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default4 : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        newsTableAdapters.tbl_newsTableAdapter nta = new newsTableAdapters.tbl_newsTableAdapter();
        string nid = Request.QueryString["nid"];//آیدی هر موضوع را بر میگرداند
        string nn = nta.numberofnewsv(int.Parse(nid)).ToString();//با استفاده از آیدی هر موضوع و کويری مشخص شده تعداد بازدیدکنندگان هر مطلب را بر میگرداند.
        nta.Updatenewsvisited(int.Parse(nn), int.Parse(nid));//به تعداد بازدیدکنندگاه 1 واحد اضافه میشود
        string ton = nta.titleofnews(int.Parse(nid));//عنوان صفحه متناسب با هر خبر با آیدی آن خبر
        Page.Title = ton;//عنوان صفحه

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btn_com_Click(object sender, EventArgs e)
    {
        string nid = Request.QueryString["nid"];
        if (Request.Cookies["nazar" + nid] != null)//استفاده از کوکی برای نگه داشته شدن اطلاعات در مرورگر 
        {
            lbl_com.Text = "شما  نظر خود را ارسال کرده اید";
            comTableAdapters.tbl_commandTableAdapter cta = new comTableAdapters.tbl_commandTableAdapter();//اتصال به دیتاست com(کامنت)
          //  cta.GetDataAllcom();
       
           
            DataList2.DataBind();//نمایش
        }
        else
        {
            comTableAdapters.tbl_commandTableAdapter cta = new comTableAdapters.tbl_commandTableAdapter();
            cta.InsertQuerycom(txt_name.Text, txt_mail.Text, DateTime.Now, txt_com.Text, int.Parse(nid));
           DataList2.DataBind();
            txt_name.Text = "";
            txt_mail.Text = "";
            txt_com.Text = "";

            HttpCookie ObjCookie = new HttpCookie("nazar" + nid, "1");
            Response.Cookies.Add(ObjCookie);

            lbl_com.Text = ".نظر شما با موفقیت ثبت گردید";
        }


    }


    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)//مانند بخش کامنت
    {
        string nid = Request.QueryString["nid"];
        if (Request.Cookies["like" + nid] != null)
        {

        }
        else
        {
            newsTableAdapters.tbl_newsTableAdapter cta = new newsTableAdapters.tbl_newsTableAdapter();
            cta.Updatelike(1, int.Parse(nid));
            DataList1.DataBind();
            HttpCookie objlike = new HttpCookie("like" + nid);
            Response.Cookies.Add(objlike);
        }



    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)//مانند بخش کامنت
    {
        string nid = Request.QueryString["nid"];
        if (Request.Cookies["dislike" + nid] != null)
        {

        }
        else
        {
            newsTableAdapters.tbl_newsTableAdapter cta = new newsTableAdapters.tbl_newsTableAdapter();
            cta.Updatedislike(1, int.Parse(nid));
            DataList1.DataBind();
            HttpCookie objlike = new HttpCookie("dislike" + nid, "1");
            Response.Cookies.Add(objlike);
        }

    }


    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }

    protected void lnkDownload_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {




    }

}