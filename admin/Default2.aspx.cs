using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_bazdid.Text = "تعداد بازدیدکنندگان:" + Application["bazdidkonande"].ToString();//استفاده از سشن برای مشخص کردن تعداد بازدیدکنندگان در پنل مدیریت
    }
    protected void Timer2_Tick(object sender, EventArgs e)
    {
        lbl_timer.Text = DateTime.Now.ToString();//به دست آوردن زمان
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}