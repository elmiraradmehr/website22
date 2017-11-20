<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>تماس با ما</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div  class="contact-ghanun" style="width:700px; color:#5c0d09;margin:0 auto;text-align:right;padding-right:10px;padding-top:10px;">تماس با ما</div>
         <div style="text-align:right;width:700px;font-family:'B Homa';font-size:16px;">تماس و ارتباط با سایت ایران فیلم</div> 
        
         <div style="text-align:right;width:700px;font-family:'B Homa';font-size:16px;">شما می توانید از طرق زیر با ما در تماس و در ارتباط باشید</div>
         <ul style="direction:rtl;text-align:right;width:670px;font-size:18px; color:#5c0d09">
             <li>از طریق ثبت نام در سایت و ارسال پیام به مدیریت سایت</li>
             <li>از طریق گذاشتن نظرات خودتان در سایت</li>
             <li> irfilmac@gmail.comپست الکترونیک ما برای ارسال ایمیل</li>
         </ul> 
        <div style="text-align:right;width:700px;font-family:'B Homa';font-size:16px;direction:rtl;">با استفاده از فرم زیر می توانید انتقادات و پیشنهادات، مسائل مربوط به فیلم های پخش شده در سایت، سفارش آگهی تبلیغاتی و یا سایر مواردی را که مد نظر دارید با ما مطرح نمائید؛ برای دریافت پاسخ، لطفا ایمیلی را درج کنید که در حال حاضر فعال باشد</div> 
    <br />
    <br />
    <br />
    <br />

        <div class="vasat-bala" style="width:700px; color:black;margin:0 auto;text-align:right;padding-bottom:10px;background-color:#e62117;border-color:#a30a02;" ><h4 style="padding-right:10px;">ارسال پیام</h4></div>
    <div class="vasat-vasat"style="width:700px;height:360px;border-color:#a30a02;">
         <table style="direction:rtl">
             
            <tr style="padding-top:10px;padding:10px">
                <td >نام و نام خانوادگی:</td>
                <td style="padding-top:10px;">
                    <asp:TextBox ID="txt_name" runat="server" Width="254px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="باید نام خود را وارد کنید." ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>پست الکترونیک:</td>
                <td>
                    <asp:TextBox ID="txt_email" runat="server" TextMode="Email" Width="253px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ErrorMessage="پست الکترونیک معتبر نیست." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="200px"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>موضوع پیام:</td>
                <td>
                    <asp:TextBox ID="txt_cat" runat="server" Width="254px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_cat" ErrorMessage="باید موضوع پیغام خود را وارد کنید." ForeColor="Red" Width="250px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>پیغام شما:</td>
                <td>
                    <asp:TextBox ID="txt_desc" runat="server" Height="180px" TextMode="MultiLine" Width="452px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_desc" ErrorMessage="باید پیغام خود را وارد کنید." ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 38px">
                    <asp:Button ID="btn_con" runat="server" OnClick="btn_con_Click" Text="ارسال" Width="138px" />
                </td>
                <td style="height: 38px">
                    <asp:Label ID="lbl_con" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
 

    </div>
    <div class="vasat-pain"style="width:700px;border-color:#a30a02;">

    </div>
    
                  <div style="height:200px"></div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

</asp:Content>

