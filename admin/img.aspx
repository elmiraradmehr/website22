<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="img.aspx.cs" Inherits="admin_img" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="imgid" DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="imgid" HeaderText="imgid" InsertVisible="False" ReadOnly="True" SortExpression="imgid" />
            <asp:BoundField DataField="imgname" HeaderText="imgname" SortExpression="imgname" />
            <asp:BoundField DataField="addrssimg" HeaderText="addrssimg" SortExpression="addrssimg" />
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
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="DeleteQueryimg" InsertMethod="InsertQueryimg" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllimg" TypeName="imageTableAdapters.tbl_imgTableAdapter" UpdateMethod="UpdateQueryimg">
        <DeleteParameters>
            <asp:Parameter Name="Original_imgid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="imgname" Type="String" />
            <asp:Parameter Name="addrssimg" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="imgname" Type="String" />
            <asp:Parameter Name="addrssimg" Type="String" />
            <asp:Parameter Name="Original_imgid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="DeleteQueryimg" InsertMethod="InsertQueryimg" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllimg" TypeName="imageTableAdapters.tbl_imgTableAdapter" UpdateMethod="UpdateQueryimg">
        <DeleteParameters>
            <asp:Parameter Name="Original_imgid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="imgname" Type="String" />
            <asp:Parameter Name="addrssimg" Type="String" />
            <asp:Parameter Name="imgcat" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="imgname" Type="String" />
            <asp:Parameter Name="addrssimg" Type="String" />
            <asp:Parameter Name="imgcat" Type="Int32" />
            <asp:Parameter Name="Original_imgid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Deleteimg" InsertMethod="Insertimg" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllimg" TypeName="imageTableAdapters.tbl_imgTableAdapter" UpdateMethod="Updateimg">
        <DeleteParameters>
            <asp:Parameter Name="Original_imgid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="imgname" Type="String" />
            <asp:Parameter Name="addrssimg" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="imgname" Type="String" />
            <asp:Parameter Name="addrssimg" Type="String" />
            <asp:Parameter Name="Original_imgid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <table style="text-align:center;padding:16px;direction:rtl;border-color:#a30a02;border-style:solid;border-width:1px;width:600px;">
        <tr>
            <td>نام عکس:</td>
            <td>
                <asp:TextBox ID="txt_img" runat="server"></asp:TextBox></td>
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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

