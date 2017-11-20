<%@ Page Title="مدیریت مطالب" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="adminnews.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">


    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="newsid" DataSourceID="ObjectDataSource7" ForeColor="#333333" GridLines="None" style="margin-right: 0px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="newsid" HeaderText="newsid" InsertVisible="False" ReadOnly="True" SortExpression="newsid" />
            <asp:BoundField DataField="newstitle" HeaderText="newstitle" SortExpression="newstitle" />
            <asp:BoundField DataField="newsdesc" HeaderText="newsdesc" SortExpression="newsdesc" />
            <asp:BoundField DataField="newsdate" HeaderText="newsdate" SortExpression="newsdate" />
            <asp:BoundField DataField="newsvisited" HeaderText="newsvisited" SortExpression="newsvisited" />
            <asp:BoundField DataField="newscat" HeaderText="newscat" SortExpression="newscat" />
            <asp:BoundField DataField="newswriter" HeaderText="newswriter" SortExpression="newswriter" />
            <asp:BoundField DataField="newsvideo" HeaderText="newsvideo" SortExpression="newsvideo" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>




     <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" DeleteMethod="Delete" InsertMethod="Insertnews" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllNews" TypeName="newsTableAdapters.tbl_newsTableAdapter" UpdateMethod="Updatenews">
         <DeleteParameters>
             <asp:Parameter Name="Original_newsid" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="newstitle" Type="String" />
             <asp:Parameter Name="newsdesc" Type="String" />
             <asp:Parameter Name="newsdate" Type="DateTime" />
             <asp:Parameter Name="newsvisited" Type="Int32" />
             <asp:Parameter Name="newscat" Type="Int32" />
             <asp:Parameter Name="newswriter" Type="String" />
             <asp:Parameter Name="newsvideo" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="newstitle" Type="String" />
             <asp:Parameter Name="newsdesc" Type="String" />
             <asp:Parameter Name="newsdate" Type="DateTime" />
             <asp:Parameter Name="newsvisited" Type="Int32" />
             <asp:Parameter Name="newscat" Type="Int32" />
             <asp:Parameter Name="newswriter" Type="String" />
             <asp:Parameter Name="newsvideo" Type="String" />
             <asp:Parameter Name="Original_newsid" Type="Int32" />
         </UpdateParameters>
    </asp:ObjectDataSource>




     <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" DeleteMethod="DeleteQueryAdminNews" InsertMethod="InsertQueryAdminNews" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataFillAllAdminNews" TypeName="adnewTableAdapters.TableTableAdapter" UpdateMethod="UpdateQueryAdminNews">
         <DeleteParameters>
             <asp:Parameter Name="Original_adnewsid" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="adnewstitle" Type="String" />
             <asp:Parameter Name="adnewsdesc" Type="String" />
             <asp:Parameter Name="adnewsdate" Type="DateTime" />
             <asp:Parameter Name="adnewsvisited" Type="Int32" />
             <asp:Parameter Name="adnewscat" Type="Int32" />
             <asp:Parameter Name="adnewswriter" Type="String" />
             <asp:Parameter Name="newsvideo_img_txt" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="adnewstitle" Type="String" />
             <asp:Parameter Name="adnewsdesc" Type="String" />
             <asp:Parameter Name="adnewsdate" Type="DateTime" />
             <asp:Parameter Name="adnewsvisited" Type="Int32" />
             <asp:Parameter Name="adnewscat" Type="Int32" />
             <asp:Parameter Name="adnewswriter" Type="String" />
             <asp:Parameter Name="newsvideo_img_txt" Type="String" />
             <asp:Parameter Name="Original_adnewsid" Type="Int32" />
         </UpdateParameters>
</asp:ObjectDataSource>




     <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="DeleteQueryInfoAd" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllInfoAd" TypeName="infoadTableAdapters.infoadTableAdapter" UpdateMethod="UpdateQueryInfoAd">
         <DeleteParameters>
             <asp:Parameter Name="Original_infoadid" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="infoadfname" Type="String" />
             <asp:Parameter Name="infoadlname" Type="String" />
             <asp:Parameter Name="infoademail" Type="String" />
             <asp:Parameter Name="infoadadrss" Type="String" />
             <asp:Parameter Name="infoad" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="infoadfname" Type="String" />
             <asp:Parameter Name="infoadlname" Type="String" />
             <asp:Parameter Name="infoademail" Type="String" />
             <asp:Parameter Name="infoadtel" Type="Int32" />
             <asp:Parameter Name="infoadadrss" Type="String" />
             <asp:Parameter Name="infoad" Type="String" />
             <asp:Parameter Name="Original_infoadid" Type="Int32" />
         </UpdateParameters>
    </asp:ObjectDataSource>




     <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="DeleteQueryAdminNews" InsertMethod="InsertQueryAdminNews" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataFillAllAdminNews" TypeName="adnewTableAdapters.TableTableAdapter" UpdateMethod="UpdateQueryAdminNews">
         <DeleteParameters>
             <asp:Parameter Name="Original_adnewsid" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="adnewstitle" Type="String" />
             <asp:Parameter Name="adnewsdesc" Type="String" />
             <asp:Parameter Name="adnewsdate" Type="DateTime" />
             <asp:Parameter Name="adnewsvisited" Type="Int32" />
             <asp:Parameter Name="adnewscat" Type="Int32" />
             <asp:Parameter Name="adnewswriter" Type="String" />
             <asp:Parameter Name="newsvideo_img_txt" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="adnewstitle" Type="String" />
             <asp:Parameter Name="adnewsdesc" Type="String" />
             <asp:Parameter Name="adnewsdate" Type="DateTime" />
             <asp:Parameter Name="adnewsvisited" Type="Int32" />
             <asp:Parameter Name="adnewscat" Type="Int32" />
             <asp:Parameter Name="adnewswriter" Type="String" />
             <asp:Parameter Name="newsvideo_img_txt" Type="String" />
             <asp:Parameter Name="Original_adnewsid" Type="Int32" />
         </UpdateParameters>
</asp:ObjectDataSource>




     <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="DeleteQueryAdminNews" InsertMethod="InsertQueryAdminNews" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAdminNews" TypeName="adminnewsTableAdapters.TableTableAdapter" UpdateMethod="UpdateQueryAdminNews">
         <DeleteParameters>
             <asp:Parameter Name="Original_adnewsid" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="adnewsdesc" Type="String" />
             <asp:Parameter Name="adnewsdate" Type="DateTime" />
             <asp:Parameter Name="adnewstitle" Type="String" />
             <asp:Parameter Name="adnewsvisited" Type="Int32" />
             <asp:Parameter Name="adnewscat" Type="Int32" />
             <asp:Parameter Name="adnewswriter" Type="String" />
             <asp:Parameter Name="newsvideo" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="adnewsdesc" Type="String" />
             <asp:Parameter Name="adnewsdate" Type="DateTime" />
             <asp:Parameter Name="adnewstitle" Type="String" />
             <asp:Parameter Name="adnewsvisited" Type="Int32" />
             <asp:Parameter Name="adnewscat" Type="Int32" />
             <asp:Parameter Name="adnewswriter" Type="String" />
             <asp:Parameter Name="newsvideo" Type="String" />
             <asp:Parameter Name="Original_adnewsid" Type="Int32" />
         </UpdateParameters>
    </asp:ObjectDataSource>


    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

     <table style="text-align:center;padding:16px;direction:rtl;border-color:#a30a02;border-style:solid;border-width:1px;width:600px;">
                <tr>
                    <td>عنوان مطلب:</td>
                    <td><asp:TextBox ID="txt_onvan" runat="server" Width="313px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_onvan" Display="Dynamic" ErrorMessage="وارد کردن عنوان مطلب ضروری می باشد." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td>متن مطلب:</td>
                    <td><asp:TextBox ID="txt_desc" runat="server" Height="151px" TextMode="MultiLine" Width="313px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp; موضوع مطلب:</td>
                    <td><asp:DropDownList ID="drop_cat" runat="server" DataSourceID="ObjectDataSource2" DataTextField="catname" DataValueField="catid"></asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllCategoreis" TypeName="categorieTableAdapters.tbl_categoriesTableAdapter"></asp:ObjectDataSource>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
                    </td>
                </tr>
                <tr>
                    <td>نویسنده مطلب:</td>
                    <td><asp:TextBox ID="txt_writer" runat="server" Width="313px"></asp:TextBox></td>
                </tr>
                
                <tr>
                    <td>فیلم مطلب:</td>
                    <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                </tr>
                <tr>
                    <td>عکس مطلب:</td>
                    <td><asp:FileUpload ID="FileUpload2" runat="server" /></td>
                </tr>
                <tr>
                    
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="ارسال" OnClick="Button1_Click1" Width="103px" /></td>
                </tr>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <center>
                <tr style="margin:0 auto">
                    
                    <td>&nbsp;</td>
                        
                </tr>
                </center>
                <br />
                <br />
             
            </table>
        </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">

    
    
</asp:Content>


