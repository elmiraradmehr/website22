<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="upld.aspx.cs" Inherits="upld" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>آپلود سنتر</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <center>
           <br />
           <br />
           <br />
           <div  class="upload_design" dir="rtl" >آپلود سنترایران فیلم </div>

        <table style="direction:rtl;float:right;font-family:'B Homa'">
  
            <tr>
                <td>فرمت های مجاز آپلود فایل:</td>
                <td style="color:#a30a02">&nbsp;&nbsp;&nbsp;mp4,wmv,mov,avi,swf,vob,pdf,txt,doc</td>
            </tr>
           
        </table>
        <p style="float:right;direction:rtl;font-family:'B Homa'">ذخیره و نگهداری فایل ها بر روی سرور های پرسرعت ایران با سرعت بالا</p>

    </center>
      <center>
    <div class="clear"></div>
        <div style=" width:500px;height:30px;background:url(upload/upld.jpg); color:white;background-repeat:no-repeat;font-family:'B Homa';font-size:14px;" >انتخاب فایل </div>
    <table style="border-color: #a30a02;border-style: solid;border-width: 5px;direction:rtl; width:500px;text-align:center;margin:0 auto;padding-top:10px;">
        <tr>
            <td>عنوان فایل:</td>
            <td>
                <asp:TextBox ID="txt_up" runat="server"></asp:TextBox>

            </td>

        </tr>

        <tr>
            <td>انتخاب فایل:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="ارسال فایل" OnClick="Button1_Click"></asp:Button>

            </td>
            <td>
                <asp:Label ID="lbl_up" runat="server" Text=""></asp:Label>

            </td>
        </tr>

    
    </table>
    </center>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="uploadid" DataSourceID="ObjectDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="grid_upload" Width="500">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="uploadid" HeaderText="uploadid" ReadOnly="True" InsertVisible="False" SortExpression="uploadid"></asp:BoundField>
            <asp:BoundField DataField="uploadname" HeaderText="uploadname" SortExpression="uploadname"></asp:BoundField>
            <asp:BoundField DataField="uploadeadd" HeaderText="uploadeadd" SortExpression="uploadeadd"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#FFCC66" ForeColor="#333333"></PagerStyle>

        <RowStyle BackColor="#FFFBD6" ForeColor="#333333"></RowStyle>

        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#FDF5AC"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#4D0000"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#FCF6C0"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#820000"></SortedDescendingHeaderStyle>
    </asp:GridView>
       <div>    
        <br />
        <br />

        </div>
    
    <br />
    <br />
    <br />
    <br />
 
    <div >
        <center>
        <div class="ghavanin_upload" style="padding-top:5px;text-align:center;color:white;font-family:'B Homa';"> قوانین سایت</div>
                        
     
          </center>
          
            <div style="direction:rtl;font-family:'B Homa';list-style:disc; text-align:right;">
            <ul>
                <li>آپلوداسنادی که مطابق قوانین جمهوری اسلامی ایران نیست در این سایت ممنوع می باشد. </li>
                <li> اطلاعات هیچ یک از کاربران اعم از آی پی و مکان جغرافیایی و غیره را ذخیره نمیشود. </li>
                <li> تصاویر برای همیشه بر روی سرور های سایت میزبانی خواهد شد. </li>
            </ul>
            </div>
    </div>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" DeleteMethod="DeleteQueryupload" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllupload" TypeName="uploadTableAdapters.uploadTableAdapter">
        <DeleteParameters>
            <asp:Parameter Name="Original_uploadid" Type="Int32"></asp:Parameter>
        </DeleteParameters>
    </asp:ObjectDataSource>
    
     <div style="height:200px"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   

</asp:Content>


