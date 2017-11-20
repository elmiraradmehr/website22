<%@ Page Title="معرفی فیلم" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="moarfi.aspx.cs" Inherits="admin_moarfi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #000000;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="imgmid" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="imgmid" HeaderText="imgmid" InsertVisible="False" ReadOnly="True" SortExpression="imgmid" />
            <asp:BoundField DataField="imagemadd" HeaderText="imagemadd" SortExpression="imagemadd" />
            <asp:BoundField DataField="imgmdate" HeaderText="imgmdate" SortExpression="imgmdate" />
            <asp:BoundField DataField="imgmtitle" HeaderText="imgmtitle" SortExpression="imgmtitle" />
            <asp:BoundField DataField="imgmname" HeaderText="imgmname" SortExpression="imgmname" />
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
    <br />
    <br />
    <table class="auto-style1"style="border-color: #a30a02;border-style: solid;border-width: 1px;direction:rtl; width:500px;text-align:center;margin:0 auto;">
        <tr>
            <td>عنوان عکس</td>
            <td>
                <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>نام عکس:</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>انتخاب عکس:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />

            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_imgm" runat="server" Text="ارسال" OnClick="btn_imgm_Click" Width="83px" /></td>
            <td id="lbl_imgm">
                <asp:Label ID="lbl_img" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataimgm" TypeName="moarefiTableAdapters.tbl_moarfiTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_imgmid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="imagemadd" Type="String" />
            <asp:Parameter Name="imgmdate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="imagemadd" Type="String" />
            <asp:Parameter Name="imgmdate" Type="DateTime" />
            <asp:Parameter Name="imgmtitle" Type="String" />
            <asp:Parameter Name="imgmname" Type="String" />
            <asp:Parameter Name="Original_imgmid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

