<%@ Page Title="عکس موضوع" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="catimg.aspx.cs" Inherits="admin_catimg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource4" AutoGenerateColumns="False" DataKeyNames="cimgid" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="cimgid" HeaderText="cimgid" ReadOnly="True" InsertVisible="False" SortExpression="cimgid"></asp:BoundField>
            <asp:BoundField DataField="cimgname" HeaderText="cimgname" SortExpression="cimgname"></asp:BoundField>
            <asp:BoundField DataField="cimgaddrss" HeaderText="cimgaddrss" SortExpression="cimgaddrss"></asp:BoundField>
            <asp:BoundField DataField="catimg" HeaderText="catimg" SortExpression="catimg"></asp:BoundField>
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

    <asp:ObjectDataSource runat="server" ID="ObjectDataSource4" DeleteMethod="DeleteQueryCatimg" InsertMethod="InsertQueryCatimg" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataCatimg" TypeName="catimgTableAdapters.catimgTableAdapter" UpdateMethod="UpdateQuerycatimg">
        <DeleteParameters>
            <asp:Parameter Name="Original_cimgid" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cimgname" Type="String"></asp:Parameter>
            <asp:Parameter Name="cimgaddrss" Type="String"></asp:Parameter>
            <asp:Parameter Name="catimg" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cimgname" Type="String"></asp:Parameter>
            <asp:Parameter Name="cimgaddrss" Type="String"></asp:Parameter>
            <asp:Parameter Name="catimg" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Original_cimgid" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource3"></asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource2"></asp:ObjectDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
      <table style="text-align:center;padding:16px;direction:rtl;border-color:#a30a02;border-style:solid;border-width:1px;width:600px;">
        <tr>
            <td>نام عکس:</td>
            <td>
                <asp:TextBox ID="txt_img" runat="server"></asp:TextBox></td>
        </tr>
       <tr>
           <td>موضوع:</td>
           <td>
               <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="catname" DataValueField="catid"></asp:DropDownList>

               <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllCategoreis" TypeName="categorieTableAdapters.tbl_categoriesTableAdapter"></asp:ObjectDataSource>

           </td>
       </tr>

        <tr>
         
            <td>نام فایل:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />&nbsp; </td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="btn_snd" runat="server" Text="ارسال" OnClick="btn_snd_Click" Width="100px" /></td>
            <td>
                <asp:Label ID="lbl_img" runat="server" Text=" "></asp:Label></td>
        </tr>
    </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

