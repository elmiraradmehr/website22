<%@ Page Title="مدیدیت لینک ها" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="link.aspx.cs" Inherits="admin_link" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="linkid" DataSourceID="ObjectDataSource1" Width="832px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="linkid" HeaderText="linkid" InsertVisible="False" ReadOnly="True" SortExpression="linkid" />
            <asp:BoundField DataField="linkurl" HeaderText="linkurl" SortExpression="linkurl" />
            <asp:BoundField DataField="linkdesc" HeaderText="linkdesc" SortExpression="linkdesc" />
            <asp:BoundField DataField="linkname" HeaderText="linkname" SortExpression="linkname" />
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="DeleteLink" InsertMethod="InsertLink" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllLink" TypeName="linkTableAdapters.tbl_linkTableAdapter" UpdateMethod="UpdateLink">
        <DeleteParameters>
            <asp:Parameter Name="Original_linkid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="linkurl" Type="String" />
            <asp:Parameter Name="linkdesc" Type="String" />
            <asp:Parameter Name="linkname" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="linkurl" Type="String" />
            <asp:Parameter Name="linkdesc" Type="String" />
            <asp:Parameter Name="linkname" Type="String" />
            <asp:Parameter Name="Original_linkid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <br /><br /><br /><br/>
    <div style="border-color: #a30a02;border-style: solid;border-width: 1px;direction:rtl; width:500px;text-align:center;margin:0 auto;">
   
         <table >
        <tr >
            <td style="width:200px;">عنوان پیوند</td>
            <td>
                <asp:TextBox ID="txt_title" runat="server" Width="369px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="وارد کردن عنوان موضوع ضروری میباشد." ControlToValidate="txt_title" Display="Dynamic" ForeColor="Red" Width="300px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>آدرس پیوند:</td>
            <td><asp:TextBox ID="txt_url" runat="server" Width="369px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_url" Display="Dynamic" ErrorMessage="وارد کردن آدرس پیوند ضروری میباشد." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>توضیحات پیوند:</td>
            <td><asp:TextBox ID="txt_desc" runat="server" Height="167px" TextMode="MultiLine" Width="369px"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button ID="Button1" runat="server" Text="ارسال" OnClick="Button1_Click1" /></td>
            
        </tr>
    </table>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
  

        &nbsp;
  
</asp:Content>


