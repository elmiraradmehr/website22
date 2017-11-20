<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adlogin.aspx.cs" Inherits="adlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ورود به پنل مدیریت</title>
    <style>
        body
        {
           background-image:url("images/back3.jpg" );
        }
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <center><img src="images/login2.jpg"  width="150" height="150" style="padding-top:30px;"/></center>
        <table style="width:200px; border: 2px solid #e62117; font-size: 14px;float:right;margin-right:80px;">
       <Legend style="direction:rtl;text-align:center;color:white;font-family:'B Homa';padding-bottom:10px;">ورود به پنل مدیریت</Legend>
        <tr>
            <td dir="rtl" >
                <asp:TextBox ID="txt_name" runat="server" Width="200px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" Display="Dynamic" ErrorMessage="لطفا نام کاربری خود را وارد کنید. " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="font-family:'B Homa'; direction: rtl;  color:white; padding-right:20px; width:100px; ">نام کاربری:</td>
        </tr>
        <tr>
            <td dir="rtl">
                <asp:TextBox ID="txt_pass" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass" ErrorMessage="لطفا رمز عبور خود را وارد کنید." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td style="font-family:'B Homa'; direction: rtl; color:white;padding-right:20px;">رمز عبور:</td>
        </tr>
        <tr>
            <td style="font-family:'B Homa';float:right;color:white" dir="rtl" ><asp:CheckBox ID="CheckBox2" runat="server"  />مرا به خاطر بسپار </td>

        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label  style="float:right"  ID ="Label4" runat="server" Text=""></asp:Label>
            </td>
            <td style="font-family: Tahoma; direction: rtl;color:white;padding-right:20px;">
                <asp:Button ID="btn_login" runat="server" Text="ورود" Width="93px"  OnClick="btn_login_Click"  />
            </td>
        </tr>
    </table>
    
       
   
    </div>
    </form>
</body>
</html>
