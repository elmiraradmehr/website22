<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="adcomment.aspx.cs" Inherits="admin_adcomment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="comid" DataSourceID="ObjectDataSource4" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="comusername" HeaderText="comusername" SortExpression="comusername"></asp:BoundField>
            <asp:BoundField DataField="comid" HeaderText="comid" SortExpression="comid" InsertVisible="False" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="comemail" HeaderText="comemail" SortExpression="comemail"></asp:BoundField>
            <asp:BoundField DataField="comdate" HeaderText="comdate" SortExpression="comdate"></asp:BoundField>
            <asp:BoundField DataField="comtext" HeaderText="comtext" SortExpression="comtext"></asp:BoundField>
            <asp:BoundField DataField="newsid" HeaderText="newsid" SortExpression="newsid"></asp:BoundField>
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

    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="DeleteQuerycom" InsertMethod="InsertQuerycom" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllcom" TypeName="comTableAdapters.tbl_commandTableAdapter" UpdateMethod="UpdateQuerycom">
        <DeleteParameters>
            <asp:Parameter Name="Original_comid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="comusername" Type="String" />
            <asp:Parameter Name="comemail" Type="String" />
            <asp:Parameter Name="comdate" Type="DateTime" />
            <asp:Parameter Name="comtext" Type="String" />
            <asp:Parameter Name="newsid" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="comusername" Type="String" />
            <asp:Parameter Name="comemail" Type="String" />
            <asp:Parameter Name="comdate" Type="DateTime" />
            <asp:Parameter Name="comtext" Type="String" />
            <asp:Parameter Name="newsid" Type="Int32" />
            <asp:Parameter Name="Original_comid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="DeleteQuerycom" InsertMethod="InsertQuerycom" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllcoment" TypeName="ComentTableAdapters.tbl_commandTableAdapter" UpdateMethod="UpdateQueryf">
        <DeleteParameters>
            <asp:Parameter Name="Original_comid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="comusername" Type="String" />
            <asp:Parameter Name="comemail" Type="String" />
            <asp:Parameter Name="comdate" Type="DateTime" />
            <asp:Parameter Name="comtext" Type="String" />
            <asp:Parameter Name="newsid" Type="Int32" />
            <asp:Parameter Name="upproad" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="comusername" Type="String" />
            <asp:Parameter Name="comemail" Type="String" />
            <asp:Parameter Name="comdate" Type="DateTime" />
            <asp:Parameter Name="comtext" Type="String" />
            <asp:Parameter Name="newsid" Type="Int32" />
            <asp:Parameter Name="upproad" Type="Boolean" />
            <asp:Parameter Name="Original_comid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="DeleteQuerycom" InsertMethod="InsertQuerycom" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllcoment" TypeName="ComentTableAdapters.tbl_commandTableAdapter" UpdateMethod="UpdateQuerycom">
        <DeleteParameters>
            <asp:Parameter Name="Original_comid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="comusername" Type="String" />
            <asp:Parameter Name="comemail" Type="String" />
            <asp:Parameter Name="comdate" Type="DateTime" />
            <asp:Parameter Name="comtext" Type="String" />
            <asp:Parameter Name="newsid" Type="Int32" />
            <asp:Parameter Name="upproad" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="comusername" Type="String" />
            <asp:Parameter Name="comemail" Type="String" />
            <asp:Parameter Name="comdate" Type="DateTime" />
            <asp:Parameter Name="comtext" Type="String" />
            <asp:Parameter Name="newsid" Type="Int32" />
            <asp:Parameter Name="upproad" Type="Boolean" />
        </UpdateParameters>
    </asp:ObjectDataSource>

    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" DeleteMethod="DeleteQuerycom" InsertMethod="InsertQuerycom" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllcom" TypeName="comTableAdapters.tbl_commandTableAdapter" UpdateMethod="comentupdate">
        <DeleteParameters>
            <asp:Parameter Name="Original_comid" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="comusername" Type="String"></asp:Parameter>
            <asp:Parameter Name="comemail" Type="String"></asp:Parameter>
            <asp:Parameter Name="comdate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="newsid" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="comtext" Type="String"></asp:Parameter>
            <asp:Parameter Name="upproad" Type="Boolean"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="comusername" Type="String"></asp:Parameter>
            <asp:Parameter Name="comemail" Type="String"></asp:Parameter>
            <asp:Parameter Name="comdate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="newsid" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="comtext" Type="String"></asp:Parameter>
            <asp:Parameter Name="upproad" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="nawsid" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

