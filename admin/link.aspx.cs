using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_link : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
       
       
        }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        linkTableAdapters.tbl_linkTableAdapter lnk = new linkTableAdapters.tbl_linkTableAdapter();//اتصال به دیتاست link
        lnk.InsertLink(txt_url.Text, txt_desc.Text,txt_title.Text);//درج در پایگاه داده با استفاده از insertlink
        GridView1.DataBind();
        txt_title.Text = " ";
        txt_url.Text = " ";
        txt_desc.Text = " ";
        
    }
}