using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_showadnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        adnewTableAdapters.TableTableAdapter anta = new adnewTableAdapters.TableTableAdapter();
        string nid = Request.QueryString["nid"];//استخراج مقدار آیدی هد مطلب
        string nn = anta.ScalarQuerynumbervs(int.Parse(nid)).ToString();//تعداد بازدیدکننگان هر مطلب با استفاده از nid
        anta.UpdateQuerynumvisited(int.Parse(nn), int.Parse(nid));//به اضای هربار رفرش صفحه 1 واحد به تعداد بازدیدکنندگان اضافه میشود
        string toan = anta.titleofadminnews(int.Parse(nid));//عنوان هر صفحه
        Page.Title = toan;
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}