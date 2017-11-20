<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="newsid" DataSourceID="SqlDataSource3">
        <ItemTemplate>
             <center>
                  <div class="vasat-bala" style="margin-left:100px;"><a href="<%# Eval("newsid","shownews.aspx?nid={0}") %>" target="_blank" title="<%# Eval("newstitle") %>" class="title"><h4><%# Eval("newstitle") %></h4></a></div>
                  <div class="vasat-vasat" style="margin-left:100px;">
              
                        <video width="560" height="315" controls="controls" style="float:right"> 
                             <source src="vid/<%# Eval("newsvideo") %>" type="video/mp4" />
                       </video>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("newsdesc") %>' />
               
            </div>
            <div class="vasat-pain" style="margin-left:100px;"></div>


            <br />
<br />
                </center>
     
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:DatabaseConnectionString %>' SelectCommand="SELECT * FROM [tbl-news] WHERE ([newstitle] LIKE '%' + @newstitle + '%') ORDER BY [newsdate] DESC">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="search" Name="newstitle" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [tbl-news] WHERE ([newsdesc] LIKE '%' + @newsdesc + '%') ORDER BY [newsid] DESC">
        <SelectParameters>
            <asp:QueryStringParameter Name="newsdesc" QueryStringField="search" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT * FROM [tbl-news] WHERE ([newsdesc] LIKE '%' + @newsdesc + '%') ORDER BY [newsid]">
        <SelectParameters>
            <asp:QueryStringParameter Name="newsdesc" QueryStringField="search" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div style="height:200px;width:100%"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

