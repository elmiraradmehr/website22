<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vorud.aspx.cs" Inherits="vorud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ثبت نام در سایت</title>
   <style>
       body {
           background-image:url("images/back3.jpg");
           position:fixed;
       }
       
       .auto-style1 {
           width: 115px;
       }
       .right-top 
{
    border: 1px solid #a30a02;
    width: 200px;
    height: 40px;
    border-top-left-radius: 6px;
    border-top-right-radius: 6px;
    background-color:#e62117;
    color:white;
    font-family:Tahoma;
   
}

.right-center
{
    border-left: 1px solid #a30a02;
    border-right: 1px solid #a30a02;
    width:200px;
    background-color:white;
   
 
}


.right-bottum
{
    border-left: 1px solid #a30a02;
    border-right: 1px solid #a30a02;
    border-bottom: 1px solid #a30a02;
    width:200px; 
    background-color:white;
}
    

       
   </style>
</head>
<body>
      <form id="form1" runat="server"> 
      
   
              <br />
              <br />  
          <center>                      
              <div class="right-top" style="padding-top:10px;font-family:'B Homa';color:#5d0202;width:450px;margin-left:15px;">عضویت در سایت</div>
          </center>
              <div class="right-center" style="width:450px; height:200px;margin-left:15px; ">
                <div style="direction:rtl;padding-top:20px;padding-right:20PX;"> 
         
                <table >

               <tr>
                     <td class="auto-style1">
                        نام کاربری:
                    </td>
                    <td>
                         <asp:TextBox ID="txtUsername" runat="server" Width="296px" />
                        <asp:RequiredFieldValidator ErrorMessage="لطفا نام کاربری را وارد نمایید" ForeColor="Red" ControlToValidate="txtUsername"
                            runat="server" Display="Dynamic" Width="300px" />
                        
                    </td>
             </tr>
                  

             <tr>
                 <td class="auto-style1">
                    کلمه عبور:
                </td>
                <td>
                     <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="296px" />
                     <asp:RequiredFieldValidator ErrorMessage="لطفا کلمه عبور را وارد نمایید" ForeColor="Red" ControlToValidate="txtPassword"
                         runat="server" Display="Dynamic" Width="300px" />
                </td>
             
                </tr>
            <tr>
                <td class="auto-style1">
                     تکرار کلمه عبور:
                </td>
                <td>
                     <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="296px" />

                    <asp:CompareValidator ErrorMessage="کلمه عبور مطابقت ندارد" ForeColor="Red" ControlToCompare="txtPassword"
                        ControlToValidate="txtConfirmPassword" runat="server" Display="Dynamic" Width="300px" />
                </td>
            </tr>
            <tr>
                 <td class="auto-style1">
                     آدرس الکترونیکی:
                </td>
                <td>
                     <asp:TextBox ID="txtEmail" runat="server" Width="296px" />
                    <asp:RequiredFieldValidator ErrorMessage="لطفا ایمیل را وارد نمایید" Display="Dynamic" ForeColor="Red"
                          ControlToValidate="txtEmail" runat="server" />
                        <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="آدرس الکترونیکی معتبر نیست" Width="300px" />
                
                </td>
          </tr>
          <tr>
         
                <td >
                          
                </td>
         
         </tr>
</table>       
  
              </div>  
              <br />
                  <asp:Button Text="ثبت نام" style="float:left;margin-left:150px;" runat="server" OnClick="Unnamed6_Click" Width="105px"  />  
                                    
 </div> 
                     <div class="right-bottum" style="width:450px;margin-left:1px;"></div>
        
    </form>
</body>
</html>
