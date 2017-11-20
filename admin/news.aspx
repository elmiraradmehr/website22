<%@ Page Title="مدیریت مطالب" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="admin_news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <p>
&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="adnewsid" DataSourceID="ObjectDataSource6" Height="159px" Width="270px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="adnewsid" HeaderText="adnewsid" InsertVisible="False" ReadOnly="True" SortExpression="adnewsid" />
                <asp:BoundField DataField="adnewstitle" HeaderText="adnewstitle" SortExpression="adnewstitle" />
                <asp:BoundField DataField="adnewsdesc" HeaderText="adnewsdesc" SortExpression="adnewsdesc" />
                <asp:BoundField DataField="adnewsdate" HeaderText="adnewsdate" SortExpression="adnewsdate" />
                <asp:BoundField DataField="adnewsvisited" HeaderText="adnewsvisited" SortExpression="adnewsvisited" />
                <asp:BoundField DataField="adnewscat" HeaderText="adnewscat" SortExpression="adnewscat" />
                <asp:BoundField DataField="adnewswriter" HeaderText="adnewswriter" SortExpression="adnewswriter" />
                <asp:BoundField DataField="newsvideo_img_txt" HeaderText="newsvideo_img_txt" SortExpression="newsvideo_img_txt" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
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
        <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" DeleteMethod="DeleteQueryAdminNews" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataFillAllAdminNews" TypeName="adnewTableAdapters.TableTableAdapter" UpdateMethod="UpdateQueryadnewsid">
            <DeleteParameters>
                <asp:Parameter Name="Original_adnewsid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="adnewstitle" Type="String" />
                <asp:Parameter Name="adnewsdesc" Type="String" />
                <asp:Parameter Name="adnewsdate" Type="DateTime" />
                <asp:Parameter Name="adnewsvisited" Type="Int32" />
                <asp:Parameter Name="adnewscat" Type="Int32" />
                <asp:Parameter Name="adnewswriter" Type="String" />
                <asp:Parameter Name="newsvideo_img_txt" Type="String" />
                <asp:Parameter Name="image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="adnewstitle" Type="String" />
                <asp:Parameter Name="adnewsdesc" Type="String" />
                <asp:Parameter Name="adnewsdate" Type="DateTime" />
                <asp:Parameter Name="adnewsvisited" Type="Int32" />
                <asp:Parameter Name="adnewscat" Type="Int32" />
                <asp:Parameter Name="adnewswriter" Type="String" />
                <asp:Parameter Name="newsvideo_img_txt" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="Original_adnewsid" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="DeleteQueryAdminNews" InsertMethod="InsertQueryAdminNews" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataFillAllAdminNews" TypeName="adnewTableAdapters.TableTableAdapter" UpdateMethod="UpdateQueryAdminNews">
            <DeleteParameters>
                <asp:Parameter Name="Original_adnewsid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="adnewstitle" Type="String" />
                <asp:Parameter Name="adnewsdesc" Type="String" />
                <asp:Parameter Name="adnewsdate" Type="DateTime" />
                <asp:Parameter Name="adnewsvisited" Type="Int32" />
                <asp:Parameter Name="adnewscat" Type="Int32" />
                <asp:Parameter Name="adnewswriter" Type="String" />
                <asp:Parameter Name="newsvideo_img_txt" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="adnewstitle" Type="String" />
                <asp:Parameter Name="adnewsdesc" Type="String" />
                <asp:Parameter Name="adnewsdate" Type="DateTime" />
                <asp:Parameter Name="adnewsvisited" Type="Int32" />
                <asp:Parameter Name="adnewscat" Type="Int32" />
                <asp:Parameter Name="adnewswriter" Type="String" />
                <asp:Parameter Name="newsvideo_img_txt" Type="String" />
                <asp:Parameter Name="Original_adnewsid" Type="Int32" />
            </UpdateParameters>
    </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Deletenews" InsertMethod="Insertnews" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllNews" TypeName="newsTableAdapters.tbl_newsTableAdapter" UpdateMethod="Updatenewsvisited">
            <DeleteParameters>
                <asp:Parameter Name="Original_newsid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="newstitle" Type="String" />
                <asp:Parameter Name="newsdesc" Type="String" />
                <asp:Parameter Name="newsdate" Type="DateTime" />
                <asp:Parameter Name="newsvisited" Type="Int32" />
                <asp:Parameter Name="newscat" Type="Int32" />
                <asp:Parameter Name="newswriter" Type="String" />
                <asp:Parameter Name="newsvideo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="newsvisited" Type="Int32" />
                <asp:Parameter Name="Original_newsid" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllNews" TypeName="newsTableAdapters.tbl_newsTableAdapter"></asp:ObjectDataSource>
        <br />
    </p>
    <br />
        <div>
            <table style="text-align:center;padding:16px;direction:rtl;border-color:#a30a02;border-style:solid;border-width:1px;width:600px;">
                <tr>
                    <td>عنوان مطلب:</td>
                    <td><asp:TextBox ID="txt_onvan" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>متن مطلب:</td>
                    <td><asp:TextBox ID="txt_desc" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>&nbsp; موضوع مطلب:</td>
                    <td><asp:DropDownList ID="drop_cat" runat="server" DataSourceID="ObjectDataSource2" DataTextField="catname" DataValueField="catid"></asp:DropDownList>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllCategoreis" TypeName="categorieTableAdapters.tbl_categoriesTableAdapter"></asp:ObjectDataSource>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
                    </td>
                </tr>
                <tr>
                    <td>نویسنده مطلب:</td>
                    <td><asp:TextBox ID="txt_writer" runat="server"></asp:TextBox></td>
                </tr>
                
                <tr>
                    <td>فیلم مطلب:</td>
                    <td><asp:FileUpload ID="FileUpload1" runat="server" />

                    </td>
                </tr>
                <tr>
                    <td>عکس مطلب</td>
                    <td>
                        <asp:FileUpload ID="FileUpload2" runat="server" />

                    </td>
                </tr>
                <tr>
                    
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="ارسال" OnClick="Button1_Click1" /></td>
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
        </div>
   

</asp:Content>



<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <center>
    
        </center>
</asp:Content>




