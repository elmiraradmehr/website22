<%@ Page Title="مدیریت موضوع" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="categories.aspx.cs" Inherits="admin_categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <br />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="catid" DataSourceID="ObjectDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="catname" HeaderText="catname" SortExpression="catname" />
            <asp:BoundField DataField="catid" HeaderText="catid" InsertVisible="False" ReadOnly="True" SortExpression="catid" />
            <asp:BoundField DataField="imgcat" HeaderText="imgcat" SortExpression="imgcat" />
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
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllCategoreis" TypeName="categorieTableAdapters.tbl_categoriesTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_catid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="catname" Type="String" />
            <asp:Parameter Name="imgcat" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="catname" Type="String" />
            <asp:Parameter Name="imgcat" Type="String" />
            <asp:Parameter Name="Original_catid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteCatByCatId" InsertMethod="InsertCat" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllCategoreis" TypeName="categorieTableAdapters.tbl_categoriesTableAdapter" UpdateMethod="UpdateCatByCatId">
        <DeleteParameters>
            <asp:Parameter Name="Original_catname" Type="String" />
            <asp:Parameter Name="Original_catid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="catname" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="catname" Type="String" />
            <asp:Parameter Name="Original_catid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
     <table style="border-color: #a30a02;border-style: solid;border-width: 1px;direction:rtl; width:500px;text-align:center;margin:0 auto;">
        <tr>
            <td>نام موضوع:</td>
            <td>
                <asp:TextBox ID="txt_cat" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_cat" Display="Dynamic" ErrorMessage="وارد کردن نام موضوع ضروری میباشد." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
          <tr>
            <td>عکس موضوع:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_cat" runat="server" Text="ثبت" OnClick="btn_cat_Click" Width="76px" /></td>
            <td>
                <asp:Label ID="lbl_cat" runat="server" Text=" "></asp:Label></td>
        </tr>

     </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

