<%@ Page Language="C#" AutoEventWireup="true" CodeFile="startpage.aspx.cs" Inherits="startpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript">
        // Popup window code
        function newPopup(url) {
            popupWindow = window.open(
                url, 'popUpWindow', 'height=300,width=400,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
                               }
    </script>
  
    <title>ورود به سایت</title>
    <style>
        body
        {
          background-image:url("images/back3.jpg");
          width:100%;
          height:100%;
          overflow-y:hidden;
        }
        .shadow
        {
            text-shadow:1px 1px 3px #dbd1d1;
  
        }
        .blink 
            {
              animation: blink-animation 2s steps(5, start) infinite;
             -webkit-animation: blink-animation 2s steps(5, start) infinite;
            }
        @keyframes blink-animation 
        {
            to 
                {
                    visibility: hidden;
                }
        }
    @-webkit-keyframes blink-animation
         {
             to
                 {
                    visibility: hidden;
                 }
        }
    

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />

        <div style="color:white;float:right;font-family:'B Morvarid';padding-right:60px;direction:rtl">برای استفاده از امکانات وب سایت اگر <a id="pop_sabtnam" href="JavaScript:newPopup('vorud.aspx');" style="color:#e62117;text-decoration:none">  ثبت نام &nbsp;</a>نکردید بشتابید.</div>
        

        <br />
        <br />
         
       
  
        
         
  <script>      
            function newPopup(url) 
        {
	        popupWindow = window.open(
		    url,'popUpWindow','height=500,width=500,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
       }
  </script>
        <p style="color:white;direction:rtl;float:right;padding-right:210px;font-family:'B Homa'">ورود در سایت</p>
        <br />
        <br />
        <br />
             <div style="width:350px;height:150px; border:3px solid #e62117;padding-top:15px;padding-right:20px;margin-left:50px;font-family:'B Homa'">
         <asp:Login ID = "Login1" style="direction:rtl;float:right;" runat = "server" OnAuthenticate="Login1_Authenticate" ForeColor="White" FailureText="ورود شما موفقیت آمیز نبود ،لطفا مجددا امتحان کنید." LoginButtonText="ورود" PasswordLabelText="رمز عبور: &nbsp;" PasswordRequiredErrorMessage="وارد کردن پسورد الزامی است."  RememberMeText="مرا به یاد داشته باش." UserNameLabelText="نام کاربری:" UserNameRequiredErrorMessage="وارد کردن نام کاربری الزامی است." TitleText="">
             
             <TextBoxStyle Width="200px" />
        </asp:Login>

       </div>
        <br />
        <br />
          <script>
              function newPopup(url) {
                  popupWindow = window.open(
                  url, 'popUpWindow', 'height=500,width=500,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
              }
  </script>
    </div>
    </form>
</body>
</html>
