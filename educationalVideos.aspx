<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="educationalVideos.aspx.cs" Inherits="educationalVideos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
     <section class="ftco-section contact-section" id="contact-section" style="padding: 7em 0 3rem;">
         <asp:Label ID="lable_msg" runat="server" class="alert alert-success" Visible="false">Add a Blog</asp:Label>

<div class="row justify-content-center pb-3" style="background-color: whitesmoke;margin-right:0px">
<div class="col-md-7 heading-section text-center ftco-animate">
<h2 class="" style="padding-top:30px">Educational Videos </h2>
<p>Protect Yourself by learning new things.</p>
</div>
</div>
 <div class="container">
    <asp:Repeater runat="server" ID="DepartmentRepeater" OnItemDataBound="DepartmentRepeater_ItemDataBound">
                        <ItemTemplate>
                            <h2 class="mb-4" style="margin-top: 20px;text-align: center;font-size: 40px;color: #207dff;">Our <%#Eval("title")%> Team</h2>
                            <hr style="margin-top: 0px; margin-bottom: 0px; border: 0; border-top: 5px solid #207dff;" />

<div class="row d-flex">
   <asp:Repeater runat="server" ID="EducationalVideoRepeater">
   <ItemTemplate>
<div class="col-md-4 ftco-animate">
<div class="staff">
<div class="img-wrap d-flex align-items-stretch">
    <iframe src="<%#Eval("url")%>" height="200" width="300" title="Iframe Example" allowfullscreen="allowfullscreen"></iframe>
<%--<div class="img align-self-stretch" style="background-image: url(<%#Eval("image")%>);"></div>--%>
</div>
<div class="text pt-3 text-center">
<h3 class="mb-2"><a href="<%#Eval("url")%>"><%#Eval("title")%></a></h3>
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
     <div class="" style="text-align:center">
        <p><a href="http://aastha.omtechnoware.com/DepartmentEductionalVideos/<%#Eval("id")%>"" class="btn btn-primary">View All</a></p>
    </div>
                           
                             <asp:Label ID="department_id" runat="server" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                            </ItemTemplate></asp:Repeater>
   <%--                         </ItemTemplate></asp:Repeater>
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
</div>--%>
    </div>
</section>
</asp:Content>
