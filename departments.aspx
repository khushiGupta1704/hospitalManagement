<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="departments.aspx.cs" Inherits="departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
     <section class="ftco-section contact-section" id="contact-section" style="padding: 7em 0 3rem;">
         <asp:Label ID="lable_msg" runat="server" class="alert alert-success" Visible="false">Add a Blog</asp:Label>

<div class="row justify-content-center mb-5 pb-3"  style="background-color: whitesmoke;margin-right:0px">
<div class="col-md-7 heading-section text-center ftco-animate">
<h2  class="" style="padding-top:30px">Our Departments </h2>
<p>We are Always there When You Need Us.</p>
</div>
</div>
         <div class="container">
<div class="row d-flex">

   <asp:Repeater runat="server" ID="DepartmentRepeater">
   <ItemTemplate>
<div class="col-md-4 ftco-animate">
<div class="staff">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(<%#Eval("image")%>);"></div>
</div>
<div class="text pt-3 text-center">
<h3 class="mb-2"><a href="http://aastha.omtechnoware.com/DepartmentDetail/<%#Eval("id")%>"><%#Eval("title")%></a></h3>
<div class="faded">
<%--<p>I am an ambitious workaholic, but apart from that, pretty simple person.</p>--%>
<%--<ul class="ftco-social text-center">
<li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
<li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
<li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
<li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
</ul>--%>
<%--<p><a href="#" class="btn btn-primary">Book now</a></p>--%>
</div>
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
