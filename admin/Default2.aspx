<%@ Page Title="پنل مدیریت" Language="C#" MasterPageFile="~/admin/adminMaster.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>

 <asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <div id="right">
          <div>
          <br />
          <br />
          <br />
          </div>


         <div class="right-top">پنل مدیران</div>
         <div class="right-center">
             <div style="direction:rtl;padding-top:10px;font-family:'B Homa'">
              سلام  خوش آمدید .
              </div>
             <asp:ScriptManager ID="ScriptManager1" runat="server">
             </asp:ScriptManager>
             <br />
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                     <div style="direction:ltr">
                     <asp:Label ID="lbl_timer" runat="server"></asp:Label>
                         </div>
                     <asp:Timer ID="Timer2" runat="server" OnTick="Timer2_Tick" Interval="1000">
                     </asp:Timer>
                 </ContentTemplate>
             </asp:UpdatePanel>
             <br />
             <asp:Label ID="lbl_bazdid" runat="server" Text="Label"></asp:Label>
           <br />
             <br />
             <br />
         </div>
         <div class="right-bottum"></div>
         <br /><br /><br />

     
        <br />
         <br />
         <br />

     <div>
         <div style="width:200px;border-bottom:4px solid red;font-family:'B Homa'">مدیران سایت</div>
         <br />
      
         <img src="els.PNG" width="200" height="250" style="border:2px solid black"/>
     </div>
         </div>

  </asp:Content>   
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
    <asp:DataList ID="DataList1" runat="server" DataKeyField="adnewsid" DataSourceID="ObjectDataSource3" RepeatDirection="Horizontal" RepeatColumns="3" CellPadding="10" CssClass="dataadmin" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="544px">

                <ItemTemplate>
        <br />
             <center>
            <div class="vasat-bala" style="width:200px"><a href="<%# Eval("adnewsid","shownews.aspx?nid={0}") %>" target="_blank" title="<%# Eval("adnewstitle") %>" class="title"><h4><%# Eval("adnewstitle") %></h4></a></div>
            <div class="vasat-vasat" style="width:200px;height:200px">

                
                
              <img src="../imgadmindef/<%# Eval("image") %>" title=""  width="200" height="150"/>
         
                <br />
                
               <center>
                <a style="float:left;padding-left:15px;" href="<%# Eval("adnewsid","showadnews.aspx?nid={0}") %>" target="_self" class="more">ادامه مطلب</a>
                </center>
               
              
            </div>

              

            <div class="vasat-pain"style="width:200px"></div>


            <br />
            <br />
                </center>



            <br />
        </ItemTemplate>

    </asp:DataList>

    <asp:ObjectDataSource runat="server" ID="ObjectDataSource3" DeleteMethod="DeleteQueryAdminNews" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataFillAllAdminNews" TypeName="adnewTableAdapters.TableTableAdapter" UpdateMethod="UpdateQueryAdminNews">
        <DeleteParameters>
            <asp:Parameter Name="Original_adnewsid" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="adnewstitle" Type="String"></asp:Parameter>
            <asp:Parameter Name="adnewsdesc" Type="String"></asp:Parameter>
            <asp:Parameter Name="adnewsdate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="adnewsvisited" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="adnewscat" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="adnewswriter" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsvideo_img_txt" Type="String"></asp:Parameter>
            <asp:Parameter Name="image" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="adnewstitle" Type="String"></asp:Parameter>
            <asp:Parameter Name="adnewsdesc" Type="String"></asp:Parameter>
            <asp:Parameter Name="adnewsdate" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="adnewsvisited" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="adnewscat" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="adnewswriter" Type="String"></asp:Parameter>
            <asp:Parameter Name="newsvideo_img_txt" Type="String"></asp:Parameter>
            <asp:Parameter Name="Original_adnewsid" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource2" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataFillAllAdminNews" TypeName="adnewTableAdapters.TableTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataAdminNews" TypeName="adminnewsTableAdapters.TableTableAdapter"></asp:ObjectDataSource>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

</asp:Content>

