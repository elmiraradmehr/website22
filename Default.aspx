<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>IRAN FILM ACADEMI</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
  
    <div style="float:right;">
         <div style="float:right;margin-right:60px;font-family:'B Homa';font-size:16px; width:1000px; border-bottom:3px solid black;direction:rtl;color:#5d0202">گلچینی از مطالب سایت</div>
    <br />
    <br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="newsid" DataSourceID="ObjectDataSource9" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatDirection="Horizontal" RepeatColumns="4" CssClass="d">


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
        <asp:ObjectDataSource runat="server" ID="ObjectDataSource9" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataTOP12NEWS" TypeName="newsTableAdapters.tbl_newsTableAdapter"></asp:ObjectDataSource>
        <br />
    <br />
    <br />
     <div style="float:right;margin-right:60px;font-family:'B Homa';font-size:16px; width:1000px; border-bottom:3px solid black;direction:rtl;color:#5d0202">محبوب ترین مطالب سایت</div>
    <br />
    <br />
    <asp:DataList ID="DataList2" runat="server" DataKeyField="newsid" DataSourceID="ObjectDataSource8" RepeatDirection="Horizontal" RepeatColumns="4" CssClass="d">
        <ItemTemplate>
                      <center>
                     <div style="float:right; margin-right:60px;padding-top:10px; direction:rtl">
               
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
          
           <div style="clear:both;"></div>
        </ItemTemplate>

    </asp:DataList>
        <div style="height:200px"></div>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource8" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByporbazdidtarin" TypeName="newsTableAdapters.tbl_newsTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource7" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByporbazdidtarin" TypeName="newsTableAdapters.tbl_newsTableAdapter"></asp:ObjectDataSource>
</div>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource6" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllNews" TypeName="newsTableAdapters.tbl_newsTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource5" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataNewsByNewsId" TypeName="newsTableAdapters.tbl_newsTableAdapter" UpdateMethod="Update">
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
            <asp:QueryStringParameter QueryStringField="nid" DefaultValue="0" Name="newsid" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="newstitle" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsdesc" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsdate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="newsvisited" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="newscat" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="newswriter" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsvideo" Type="String"></asp:Parameter>
            <asp:Parameter Name="image" Type="String"></asp:Parameter>
            <asp:Parameter Name="Original_newsid" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource4" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllNews" TypeName="newsTableAdapters.tbl_newsTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server"></asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource2"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAllNews" TypeName="newsTableAdapters.tbl_newsTableAdapter"></asp:ObjectDataSource>
        
                  
</asp:Content>