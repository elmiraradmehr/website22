<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shownews.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="newsid" DataSourceID="ObjectDataSource8" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">


         <ItemTemplate>
     <center>

                
                    
            <div class="vasat-bala" style="margin-left:100px;"><a href="<%# Eval("newsid","shownews.aspx?nid={0}") %>" target="_blank" title="<%# Eval("newstitle") %>" class="title"><h4><%# Eval("newstitle") %></h4></a></div>
            <div class="vasat-vasat" style="margin-left:100px;">
              
                <video width="560" height="315" controls="controls" style="float:right"> 
                    <source src="vid/<%# Eval("newsvideo") %>" type="video/mp4" />
                </video>
                  <div style="width:560px;height:300px;">
                    
                        <asp:Label ID="Label6" style="width:100px;color:black;" runat="server" Text='<%# Eval("newsvideo") %>'></asp:Label>
              </div>
               
                    
                <div style="background-color:white;width:560px;height:55px;">

                      
                      <div class="share">
                           <ul style="list-style:none;padding-left:290px;float:right;direction:rtl" class="share-buttons">
                          <li><asp:ImageButton ID="ImageButton3"    style="padding-right:10px;" runat="server" ImageUrl="~/images/thumb_up.png" ToolTip="میپسندم" CommandName="like"     CausesValidation="false" Width="30" Height="30" OnClick="ImageButton3_Click"  ></asp:ImageButton></li>
                          <li><asp:Label ID="lbl_like"  style="color:black"   runat="server"  Text='<%# Eval("like") %>'  ></asp:Label></li>
                         <li> <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/thumb_down  .png" ToolTip="نمیپسندم" CausesValidation="false"   CommandName="dislike" Width="30" Height="30" OnClick="ImageButton1_Click"></asp:ImageButton></li>
                         <li> <asp:Label ID="lbl_dislike" style="color:black" runat="server"  Text='<%# Eval("dislike") %>' Width="30px"></asp:Label></li>
              </ul>
                    <ul class="share-buttons" style="padding-top:22px;direction:ltr;position:absolute;">
                        <li><a href="https://facebook.com/sharer.php?u=shownews.aspx?nid=<%# Eval("newsid") %>" target="_blank"><img src="nt/facebook.png" width="7" height="23" style="padding-left:10px;"/></a></li>
                        <li><a href="https://twitter.com/intent/tweet?url=shownews.aspx?nid=<%# Eval("newsid") %>&amp;text=<%# Eval("newsdesc") %>" target="_blank" title="Tweet"><img src="nt/twitter.png" width="7" height="23"/></a></li>
                        <li><a href="https://plus.google.com/share?url=shownews.aspx?nid=<%# Eval("newsid") %>" target="_blank" title="Share on Google+"><img src="nt/google.png" width="7" height="23"/></a></li>
                        <li><a href="http://www.linkedin.com/shareArticle?mini=true&amp;url=shownews.aspx?nid=<%# Eval("newsid") %>&amp;title=<%# Eval("newsdesc") %>" target="_blank" title="Share on LinkedIn"><img src="nt/linkedin.png" width="7" height="23"/></a></li>
   
                        </ul>
                       
              </div>
                </div>
                </div>
       
 
                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("newsdesc") %>' />
                
              

         <div class="vasat-pain"style="margin-left:100px;">
                   
             <div style="background-color:#808080;direction:rtl; height:30px;float:right;width:560px;text-align:right;">
        
             &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;     بازدیدکنندگان مطلب:
            <asp:Label ID="newsvisitedLabel" runat="server" Text='<%# Eval("newsvisited") %>' />
                    &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
            
            موضوع مطلب:
            <asp:Label ID="newscatLabel" runat="server" Text='<%# Eval("newscat") %>' />
                    &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
            نویسنده مطلب:
            <asp:Label ID="newswriterLabel" runat="server" Text='<%# Eval("newswriter") %>' />
            
        
            </div>
         </div>
         </center>
        

        </ItemTemplate>


    </asp:DataList>



    <asp:ObjectDataSource runat="server" ID="ObjectDataSource8" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataNewsByNewsId" TypeName="newsTableAdapters.tbl_newsTableAdapter" UpdateMethod="Update">
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
            <asp:Parameter Name="image" Type="String"></asp:Parameter>
            <asp:Parameter Name="like" Type="String"></asp:Parameter>
            <asp:Parameter Name="dislike" Type="String"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" DefaultValue="1" Name="newsid" Type="Int32"></asp:QueryStringParameter>
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
            <asp:Parameter Name="like" Type="String"></asp:Parameter>
            <asp:Parameter Name="dislike" Type="String"></asp:Parameter>
            <asp:Parameter Name="Original_newsid" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource5" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatadlBynewsid" TypeName="dlTableAdapters.tbl_dlTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="dlid" DefaultValue="0" Name="newsdl" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource3" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataNewsByNewsId" TypeName="newsTableAdapters.tbl_newsTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" DefaultValue="1" Name="newsid" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource2" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataNewsByNewsId" TypeName="newsTableAdapters.tbl_newsTableAdapter" UpdateMethod="Update">
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
            <asp:QueryStringParameter QueryStringField="newsid" DefaultValue="1" Name="newsid" Type="Int32"></asp:QueryStringParameter>
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
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataNewsByNewsId" TypeName="newsTableAdapters.tbl_newsTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" DefaultValue="1" Name="newsid" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
<br />
    <br />
    <br />
    <br />
    <br />

    <asp:DataList ID="DataList2" runat="server" DataKeyField="comid" DataSourceID="ObjectDataSource10">


 <ItemTemplate>
                        <div style="border-color: #a30a02;border-style:solid;border-width:1px;border-top-left-radius:6px;border-top-right-radius:6px;background-color:#e62117;width:560px;height:60px;direction:rtl;margin-left:90px;">
               
                <img style="float:right;padding-right:5px;width:50px;height:55px;padding-top:5px;" src="images/irrges.jpg"/>
                <div style="text-align:right;padding-right:60px;">
                    <br />
              
               <b><asp:Label style="font-family:Tahoma; font-size:14px;" Text='<%# Eval("comusername") %>' runat="server" ID="Label3" /></b>  
                   
                     <br />
                <asp:Label Text='<%# Eval("comdate") %>' runat="server" ID="Label4" /><br />
              </div>

            </div>
            <div style="border-color: #808080;border-style:solid;border-width:1px;background-color:#eceaea;width:560px;height:100px;margin-left:90px;">
                <asp:Label style="direction:rtl;padding-top:10px;text-align:right;float:right;padding-right:15px;" Text='<%# Eval("comtext") %>' runat="server" ID="Label5" /><br />
            </div>
            <br />

        </ItemTemplate>
    </asp:DataList>

    <asp:ObjectDataSource runat="server" ID="ObjectDataSource10" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDatacombynewsid" TypeName="comTableAdapters.tbl_commandTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" DefaultValue="1" Name="newsid" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource9" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataCommentbynewsid" TypeName="ComentTableAdapters.tbl_commandTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" DefaultValue="1" Name="newsid" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource7" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataCommentByNewsid" TypeName="comTableAdapters.tbl_commandTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" DefaultValue="1" Name="newsid" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource6"></asp:ObjectDataSource>
    <asp:ObjectDataSource runat="server" ID="ObjectDataSource4" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataCommentByNewsid" TypeName="comTableAdapters.tbl_commandTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="nid" DefaultValue="0" Name="newsid" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <center>
           <div style="height:100px"></div>
    <div class="vasat-bala"style="width:630px;font-family:'B Homa';margin-left:70px;">ارسال نظر</div>
    <div class="vasat-vasat"style="width:630px;height:340px;direction:rtl;margin-left:70px;">
          <table >
        <tr>
            <td>نام</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server" Width="354px"></asp:TextBox>

                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" Display="Dynamic" ErrorMessage="وارد کردن نام ضروری میباشد." ForeColor="Red"></asp:RequiredFieldValidator>

                <br />

            </td>
        </tr>
        <tr>
            <td>ایمیل</td>
            <td>
                <asp:TextBox ID="txt_mail" runat="server" Width="354px"></asp:TextBox>

                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_mail" ErrorMessage="ایمیل معتبر نمی باشد." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

            </td>
        </tr>
        <tr>
            <td>دیدگاه</td>
            <td>
                <asp:TextBox ID="txt_com" runat="server" Height="150px" TextMode="MultiLine" Width="500px"></asp:TextBox>

                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_com" ErrorMessage="وارد کردن دیدگاه ضروری می باشد." ForeColor="Red"></asp:RequiredFieldValidator>

            </td>
        </tr>

        <tr>
            <td>
                <asp:Button ID="btn_com" style="background-color:#e62117;border-radius:6px;" runat="server" Text="ارسال" OnClick="btn_com_Click" Width="100" />

            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbl_com" runat="server"></asp:Label>

                &nbsp;</td>
        </tr>
    </table>

    </div>
    <div class="vasat-pain"style="width:630px;margin-left:70px;">

    </div>
        <div style="height:200px"></div>
   </center>
  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

