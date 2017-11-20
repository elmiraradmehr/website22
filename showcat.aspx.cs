using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showcat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        categorieTableAdapters.tbl_categoriesTableAdapter cta = new categorieTableAdapters.tbl_categoriesTableAdapter();//وصل شدن به دیتاست categorie 
        string cid = Request.QueryString["cid"];//  مقدار آیدی هر موضوع رامیگیرد  
        string toc = cta.titlecat(int.Parse(cid));//متناسب با آن آیدی عنوان آن را با استفاده از کويری مشخص شده بر مبگرداند
        Page.Title = toc;//عنوان صفحه

    }
    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}