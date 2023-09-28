<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="facilities.aspx.cs" Inherits="facilities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
     <section class="ftco-section contact-section" id="contact-section" style="padding: 7em 0 3rem;">
         <asp:Label ID="lable_msg" runat="server" class="alert alert-success" Visible="false">Add a Blog</asp:Label>

<div class="row justify-content-center mb-5 pb-3" style="background-color: whitesmoke;margin-right:0px">
<div class="col-md-10 heading-section text-center ftco-animate">
<h2 class="" style="padding-top:30px">Facilities</h2>
<p>Knowledge is the Powerful weapon To change the World</p>
</div>
</div>
<div class="container">
<div class="row d-flex">

    <asp:Repeater runat="server" ID="FacilityRepeater">
   <ItemTemplate>
        <div class="col-md-4 ftco-animate">
        <div class="blog-entry">
        <a href="blog-single.html" class="block-20" style='background-image: url(<%#Eval("image")%>);'>
        </a>
        <div class="text d-block">
        <div class="meta mb-3">
        <%--<div><a href="#"><%#Eval("created_date")%></a></div>--%>
        <%--<div><a href="#">Admin</a></div>
        <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>--%>
        </div>
        <h3 class="heading"><%#Eval("name")%></h3>
        <p><%#Eval("description")%></p>
        <%--<p><a href="http://aastha.omtechnoware.com/BlogDetail/<%#Eval("id")%>" class="btn btn-primary py-2 px-3">Read more</a></p>--%>
        </div>
        </div>
        </div>
   </ItemTemplate>
</asp:Repeater>

</div>
    <div class="row" style="text-align: center;margin-top: 20px;">                       
        <asp:Button ID="lbtnFirst" runat="server"
        class="btn btn-primary" Text="First" OnClick="lbtnFirst_Click"
        style="min-width: 0px;padding: 0px 12px"></asp:Button>
        <asp:Button ID="lbtnPrev" runat="server"
        class="btn btn-primary" Text="Prev"
        OnClick="lbtnPrev_Click" style="margin-top: 0px;min-width: 0px;padding: 0px 12px"></asp:Button>
        <asp:Button ID="lbtnNext" runat="server"
        class="btn btn-primary" Text="Next"
        OnClick="lbtnNext_Click" style="margin-top: 0px;min-width: 0px;padding: 0px 12px"></asp:Button>
        <asp:Button ID="lbtnLast" runat="server"
        class="btn btn-primary" Text="Last"
        OnClick="lbtnLast_Click" style="margin-top: 0px;min-width: 0px;padding: 0px 12px"></asp:Button>
</div>
<div class="row" style="text-align: center;margin-top: 20px;">                        
<asp:Label ID="lblStatus" runat="server" style="text-align:center"></asp:Label>
</div>
    </div>
</section>
</asp:Content>
