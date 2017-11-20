<%@ Page Title="مدیریت آپلود" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="uploadadmin.aspx.cs" Inherits="admin_upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="uploadid" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="uploadid" HeaderText="uploadid" InsertVisible="False" ReadOnly="True" SortExpression="uploadid" />
            <asp:BoundField DataField="uploadname" HeaderText="uploadname" SortExpression="uploadname" />
            <asp:BoundField DataField="uploadeadd" HeaderText="uploadeadd" SortExpression="uploadeadd" />
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
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteQueryupload" InsertMethod="Update" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllupload" TypeName="uploadTableAdapters.uploadTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_uploadid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uploadname" Type="String" />
            <asp:Parameter Name="uploadeadd" Type="String" />
            <asp:Parameter Name="Original_uploadid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="uploadname" Type="String" />
            <asp:Parameter Name="uploadeadd" Type="String" />
            <asp:Parameter Name="Original_uploadid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
  
    &nbsp;
</asp:Content>


