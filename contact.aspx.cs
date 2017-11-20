using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_con_Click(object sender, EventArgs e)
    {
        contactTableAdapters.tbl_contactTableAdapter conta = new contactTableAdapters.tbl_contactTableAdapter();//وصل شدن به دیتاست contact
        conta.InsertContact(txt_name.Text, txt_email.Text, txt_cat.Text, DateTime.Now, txt_desc.Text);//استفاده از query insertcontact 
        //که در دیتاست ساخته شده است.
        lbl_con.Text = ".پیغام شما با موفقیت برای ما ارسال شد";
        txt_name.Text = " ";
        txt_email.Text = " ";
        txt_cat.Text = " ";
        txt_desc.Text = " ";
    }
}