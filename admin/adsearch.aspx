<%@ Page Title="جست و جو" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="adsearch.aspx.cs" Inherits="admin_adsearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    &nbsp;<asp:DataList ID="DataList1" runat="server" DataKeyField="adnewsid" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            
             <center>
            <div class="vasat-bala"><a href="<%# Eval("adnewsid","shownews.aspx?nid={0}") %>" target="_blank" title="<%# Eval("adnewstitle") %>" class="title"><h4><%# Eval("adnewstitle") %></h4></a></div>
            <div class="vasat-vasat">

                
                
                <video width="400" height="220" controls="controls" class="video">
                   
                    <source src="../vid/<%# Eval("newsvideo_img_txt") %>" type="video/mp4" />
                    <source src="../vid/<%# Eval("newsvideo_img_txt") %>" type="video/m4v" />
                    <source src="../vid/<%# Eval("newsvideo_img_txt") %>" type="video/mpeg" />
                    <source src="../vid/<%# Eval("newsvideo_img_txt") %>" type="video/ogg" />
                   
                </video>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("adnewsdesc") %>' />
               </div>
              <div class="vasat-pain"></div>

               <br />
               <br />
                </center>
                <br />
              </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DatabaseConnectionString %>' SelectCommand="SELECT * FROM [Table] WHERE ([adnewsdesc] LIKE '%' + @adnewsdesc + '%') ORDER BY [adnewsid]">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="search" Name="adnewsdesc" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>



<asp:Content ID="Content4" runat="server" contentplaceholderid="ContentPlaceHolder3">
    <center>
    <img src="../imgmod/imgsearch/x.jpg" width="500" height="200"/>
    </center>
</asp:Content>




