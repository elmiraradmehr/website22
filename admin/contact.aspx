<%@ Page Title="مدیریت تماس با ما" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="admin_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <br />
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="conid" DataSourceID="ObjectDataSource1" ForeColor="#333333" GridLines="None" Height="459px" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="conid" HeaderText="conid" InsertVisible="False" ReadOnly="True" SortExpression="conid" />
                <asp:BoundField DataField="conusername" HeaderText="conusername" SortExpression="conusername" />
                <asp:BoundField DataField="conemail" HeaderText="conemail" SortExpression="conemail" />
                <asp:BoundField DataField="contitle" HeaderText="contitle" SortExpression="contitle" />
                <asp:BoundField DataField="condate" HeaderText="condate" SortExpression="condate" />
                <asp:BoundField DataField="context" HeaderText="context" SortExpression="context" />
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
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteContact" InsertMethod="InsertContact" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllContact" TypeName="contactTableAdapters.tbl_contactTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_conid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="conusername" Type="String" />
                <asp:Parameter Name="conemail" Type="String" />
                <asp:Parameter Name="contitle" Type="String" />
                <asp:Parameter Name="condate" Type="DateTime" />
                <asp:Parameter Name="context" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="conusername" Type="String" />
                <asp:Parameter Name="conemail" Type="String" />
                <asp:Parameter Name="contitle" Type="String" />
                <asp:Parameter Name="condate" Type="DateTime" />
                <asp:Parameter Name="context" Type="String" />
                <asp:Parameter Name="Original_conid" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

    <br />
    <br />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <center>
    &nbsp;</center>
</asp:Content>


