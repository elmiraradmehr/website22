<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="showadnews.aspx.cs" Inherits="admin_showadnews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="adnewsid" DataSourceID="ObjectDataSource2" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">

        <ItemTemplate>

            <br />
            <br />
         
             <center>

         
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
             <br />

            <div class="vasat-bala"><a href="<%# Eval("adnewsid","showadnews.aspx?nid={0}") %>" target="_self" title="<%# Eval("adnewstitle") %>" class="title" style="color:white"><h4><%# Eval("adnewstitle") %></h4></a></div>
            <div class="vasat-vasat">

             <video width="550" height="310" controls>
                 <source src="../vid/<%# Eval("newsvideo_img_txt") %>" type="video/mp4">    
             </video> 
         
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("adnewsdesc") %>'  />
                   <br />
                   <br />
                   <br />
                <div style="background-color:#808080;direction:rtl;">
             بازدیدکنندگان مطلب:
            <asp:Label ID="newsvisitedLabel" runat="server" Text='<%# Eval("adnewsvisited") %>' />
                    &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
            
            موضوع مطلب:
            <asp:Label ID="newscatLabel" runat="server" Text='<%# Eval("adnewscat") %>' />
                    &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
            نویسنده مطلب:
            <asp:Label ID="newswriterLabel" runat="server" Text='<%# Eval("adnewswriter") %>' />
            
        
            </div>
          
                <br />
            </div>

              

            <div class="vasat-pain"></div>
            </center>
    
        </ItemTemplate>
    </asp:DataList>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource2" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByAllNewsByadnewsid" TypeName="adnewTableAdapters.TableTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" DefaultValue="0" Name="adnewsid" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByAllNewsByadnewsid" TypeName="adnewTableAdapters.TableTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="adnid" DefaultValue="adnid" Name="adnewsid" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

