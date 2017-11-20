<%@ Page Title="درباره ادمین" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="infoad.aspx.cs" Inherits="admin_infoad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource4" AutoGenerateColumns="False" DataKeyNames="infoadid" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="infoadid" HeaderText="infoadid" ReadOnly="True" InsertVisible="False" SortExpression="infoadid"></asp:BoundField>
            <asp:BoundField DataField="infoadfname" HeaderText="infoadfname" SortExpression="infoadfname"></asp:BoundField>
            <asp:BoundField DataField="infoadlname" HeaderText="infoadlname" SortExpression="infoadlname"></asp:BoundField>
            <asp:BoundField DataField="infoademail" HeaderText="infoademail" SortExpression="infoademail"></asp:BoundField>
            <asp:BoundField DataField="infoadadrss" HeaderText="infoadadrss" SortExpression="infoadadrss"></asp:BoundField>
            <asp:BoundField DataField="infoad" HeaderText="infoad" SortExpression="infoad"></asp:BoundField>
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

    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="DeleteQueryinfoAd" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatainfoAd" TypeName="infoadTableAdapters.infoadTableAdapter" UpdateMethod="UpdateQueryInfoAd">
        <DeleteParameters>
            <asp:Parameter Name="Original_infoadid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="infoadfname" Type="String" />
            <asp:Parameter Name="infoadlname" Type="String" />
            <asp:Parameter Name="infoademail" Type="String" />
            <asp:Parameter Name="infoadadrss" Type="String" />
            <asp:Parameter Name="infoad" Type="String" />
            <asp:Parameter Name="image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="infoadfname" Type="String" />
            <asp:Parameter Name="infoadlname" Type="String" />
            <asp:Parameter Name="infoademail" Type="String" />
            <asp:Parameter Name="infoadadrss" Type="String" />
            <asp:Parameter Name="infoad" Type="String" />
            <asp:Parameter Name="Original_infoadid" Type="Int32" />
        </UpdateParameters>
</asp:ObjectDataSource>

    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="DeleteQueryinfoAd" InsertMethod="InsertQueryinfoAd" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatainfoAd" TypeName="infoadTableAdapters.infoadTableAdapter" UpdateMethod="UpdateQueryInfoAd">
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
            <asp:Parameter Name="infoadadrss" Type="String" />
            <asp:Parameter Name="infoad" Type="String" />
            <asp:Parameter Name="Original_infoadid" Type="Int32" />
        </UpdateParameters>
</asp:ObjectDataSource>

    <asp:ObjectDataSource runat="server" ID="ObjectDataSource2" DeleteMethod="DeleteQueryInfoAd" InsertMethod="InsertQueryInfoAd" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllInfoAd" TypeName="infoadTableAdapters.infoadTableAdapter" UpdateMethod="UpdateQueryInfoAd">
        <DeleteParameters>
            <asp:Parameter Name="Original_infoadid" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="infoadfname" Type="String"></asp:Parameter>
            <asp:Parameter Name="infoadlname" Type="String"></asp:Parameter>
            <asp:Parameter Name="infoademail" Type="String"></asp:Parameter>
            <asp:Parameter Name="infoadtel" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="infoadadrss" Type="String"></asp:Parameter>
            <asp:Parameter Name="infoad" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="infoadfname" Type="String"></asp:Parameter>
            <asp:Parameter Name="infoadlname" Type="String"></asp:Parameter>
            <asp:Parameter Name="infoademail" Type="String"></asp:Parameter>
            <asp:Parameter Name="infoadtel" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="infoadadrss" Type="String"></asp:Parameter>
            <asp:Parameter Name="infoad" Type="String"></asp:Parameter>
            <asp:Parameter Name="Original_infoadid" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1"></asp:ObjectDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <table class="auto-style1" style="text-align:center;padding:16px;direction:rtl;border-color:#a30a02;border-style:solid;border-width:1px;width:600px;">
        <tr>
            <td>نام:</td>
            <td>
                <asp:TextBox ID="txt_fname" runat="server" Width="270px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_fname" Display="Dynamic" ErrorMessage="لطفا نام را وارد کنید." ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>نام خانوادگی:</td>
            <td>
                <asp:TextBox ID="txt_lname" runat="server" Width="270px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_lname" Display="Dynamic" ErrorMessage="لطفا نام خانوادگی را وارد کنید." ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>پست الکترونیک:</td>
            <td>
                <asp:TextBox ID="txt_mail" runat="server" TextMode="Email" Width="270px"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_mail" ErrorMessage="پست الکترونیک معتبر نیست." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="200px"></asp:RegularExpressionValidator>
            </td>
        </tr>
       
        <tr>
            <td>آدرس:</td>
            <td>
                <asp:TextBox ID="txt_addrs" runat="server" TextMode="MultiLine" Width="270px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_addrs" Display="Dynamic" ErrorMessage="لطفا آدرس را وارد کنید." ForeColor="Red" Width="200px"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>درباره ادمین:</td>
            <td>
                <asp:TextBox ID="txt_admin" runat="server" Height="175px" TextMode="MultiLine" Width="361px"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />

            </td>
            <td>
                <asp:Label ID="lbl_upld" runat="server" Text="Label"></asp:Label>

            </td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="btn_snd" runat="server" Text="ارسال" OnClick="btn_snd_Click" style="height: 29px" Width="83px" /></td>
            <td>
                <asp:Label ID="lbl_infoad" runat="server" Text=""></asp:Label></td>
        </tr>

    </table>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

