<%@ Page Title="مدیریت مطالب" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="adnews.aspx.cs" Inherits="admin_adnews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="newsid" DataSourceID="ObjectDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ShowSelectButton="True"></asp:CommandField>
            <asp:BoundField DataField="newsid" HeaderText="newsid" ReadOnly="True" InsertVisible="False" SortExpression="newsid"></asp:BoundField>
            <asp:BoundField DataField="newstitle" HeaderText="newstitle" SortExpression="newstitle"></asp:BoundField>
            <asp:BoundField DataField="newsdesc" HeaderText="newsdesc" SortExpression="newsdesc"></asp:BoundField>
            <asp:BoundField DataField="newsdate" HeaderText="newsdate" SortExpression="newsdate"></asp:BoundField>
            <asp:BoundField DataField="newsvisited" HeaderText="newsvisited" SortExpression="newsvisited"></asp:BoundField>
            <asp:BoundField DataField="newscat" HeaderText="newscat" SortExpression="newscat"></asp:BoundField>
            <asp:BoundField DataField="newswriter" HeaderText="newswriter" SortExpression="newswriter"></asp:BoundField>
            <asp:BoundField DataField="newsvideo" HeaderText="newsvideo" SortExpression="newsvideo"></asp:BoundField>
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image"></asp:BoundField>
            <asp:BoundField DataField="like" HeaderText="like" SortExpression="like"></asp:BoundField>
            <asp:BoundField DataField="dislike" HeaderText="dislike" SortExpression="dislike"></asp:BoundField>
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
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" DeleteMethod="Deletenews" InsertMethod="Insertnews" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllNews" TypeName="newsTableAdapters.tbl_newsTableAdapter" UpdateMethod="Updatenews">
        <DeleteParameters>
            <asp:Parameter Name="Original_newsid" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="newstitle" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsdesc" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsdate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="newsvisited" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="newscat" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="newswriter" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsvideo" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="newstitle" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsdesc" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsdate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="newsvisited" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="newscat" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="newswriter" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsvideo" Type="String"></asp:Parameter>
            <asp:Parameter Name="Original_newsid" Type="Int32"></asp:Parameter>
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
                        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server"></asp:ObjectDataSource>
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
                        <asp:Button ID="Button1" runat="server" Text="ارسال" OnClick="Button1_Click" Width="103px" /></td>
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

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

