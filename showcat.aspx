<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showcat.aspx.cs" Inherits="showcat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
       
    <asp:DataList ID="DataList3" runat="server" DataKeyField="cimgid" DataSourceID="ObjectDataSource5">
        <ItemTemplate>
        
           <div >
            <img src="img/<%# Eval("cimgaddrss") %>" title="<%# Eval("cimgname") %> " width="800"  height="80" style="margin:0 auto;border-radius:10px;"/>
           </div>
              
            <br />
            <br />
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource5" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByCatimg" TypeName="catimgTableAdapters.catimgTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="cid" DefaultValue="0" Name="catimg" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
             
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
  
     <div style="float:right;">
       
    <asp:DataList ID="DataList1" runat="server" DataKeyField="newsid" DataSourceID="ObjectDataSource2" RepeatDirection="Horizontal" RepeatColumns="4"  CssClass="d">
        <ItemTemplate>
           <center>
             <div style="float:right; margin-right:60px;padding-top:10px;">
               
                <div class="vasat-bala"style="width:200px;color:black;"><a href="<%# Eval("newsid","shownews.aspx?nid={0}") %>" target="_self" title="<%# Eval("newstitle") %>" class="title"><h4><%# Eval("newstitle") %></h4></a></div>
                <div class="vasat-vasat  " style="width:200px;height:200px;" >
          
                <img src="<%# Eval("image","imgdef/{0}") %>" title="<%# Eval("newstitle") %>" width="200" height="170" />
           <br />

               <center>
                <a style="float:left;padding-left:15px;" href="<%# Eval("newsid","shownews.aspx?nid={0}") %>" target="_self" title="<%# Eval("newstitle") %>" class="more">ادامه مطلب</a>
                </center>
            </div>
                <div class="vasat-pain"style="width:200px"></div>
                  
  
</center>

      
        </ItemTemplate>
        
    </asp:DataList>
         <div style="height:800px"></div>
        </div>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource2" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataNewsByCatId" TypeName="newsTableAdapters.tbl_newsTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="cid" DefaultValue="0" Name="newscat" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataNewsByCatId" TypeName="newsTableAdapters.tbl_newsTableAdapter" UpdateMethod="Update">
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
            <asp:Parameter Name="like" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="dislike" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="cid" DefaultValue="0" Name="newscat" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="newstitle" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsdesc" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsdate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="newsvisited" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="newscat" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="newswriter" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsvideo" Type="String"></asp:Parameter>
            <asp:Parameter Name="like" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="dislike" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Original_newsid" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>