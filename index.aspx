<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register TagPrefix="cc1" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
<asp:Repeater runat="server" ID="SliderRepeater">
<ItemTemplate>
    <section class="hero-wrap js-fullheight" style="background-image: url(<%#Eval("image")%>);" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
                <div class="col-md-6 pt-5 ftco-animate">
                    <div class="mt-5">
                        <span class="subheading">Welcome to Aastha Hospital</span>
                        <h1 class="mb-4">We are here
                            <br>
                            for your Care</h1>
                        <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove.</p>
                        <p><a href="#" class="btn btn-primary py-3 px-4">Make an appointment</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </ItemTemplate>
    </asp:Repeater>
    <section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb" style="background-color:aliceblue">
        <div class="container">
            <div class="row d-flex">
                <div class="col-md-6 col-lg-5 d-flex">
                    <div class="img d-flex align-self-stretch align-items-center" style="background-image: url(/front-assets/images/hospital.jpg);">
                    </div>
                </div>
                <div class="col-md-6 col-lg-7 pl-lg-5 py-md-5">
                    <div class="py-md-5">
                        <div class="row justify-content-start pb-3">
                            <div class="col-md-12 heading-section ftco-animate p-4 p-lg-5">
                                <h2 class="mb-4">We Are <span>Aastha Hospital</span> A Medical Hospital</h2>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                <p><a href="#" class="btn btn-primary py-3 px-4">Make an appointment</a> <a href="#" class="btn btn-secondary py-3 px-4">Contact us</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <hr style="border-top: 10px solid #207dff;width: 100%;margin-top:0px;margin-bottom:0px"/>
    </section>
    <section class="ftco-section ftco-no-pt ftco-no-pb ftco-services-2 bg-light">
        <div class="container">
            <div class="row d-flex">
                <div class="col-md-7 py-5">
                    <div class="py-lg-5">
                        <div class="row justify-content-center pb-5">
                            <div class="col-md-12 heading-section ftco-animate">
                                <h2 class="mb-3">Our Services</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 d-flex align-self-stretch ftco-animate">
                                <div class="media block-6 services d-flex">
                                    <div class="icon justify-content-center align-items-center d-flex"><span class="flaticon-ambulance"></span></div>
                                    <div class="media-body pl-md-4">
                                        <h3 class="heading mb-3">Emergency Services</h3>
                                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 d-flex align-self-stretch ftco-animate">
                                <div class="media block-6 services d-flex">
                                    <div class="icon justify-content-center align-items-center d-flex"><span class="flaticon-doctor"></span></div>
                                    <div class="media-body pl-md-4">
                                        <h3 class="heading mb-3">Qualified Doctors</h3>
                                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 d-flex align-self-stretch ftco-animate">
                                <div class="media block-6 services d-flex">
                                    <div class="icon justify-content-center align-items-center d-flex"><span class="flaticon-stethoscope"></span></div>
                                    <div class="media-body pl-md-4">
                                        <h3 class="heading mb-3">Outdoors Checkup</h3>
                                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 d-flex align-self-stretch ftco-animate">
                                <div class="media block-6 services d-flex">
                                    <div class="icon justify-content-center align-items-center d-flex"><span class="flaticon-24-hours"></span></div>
                                    <div class="media-body pl-md-4">
                                        <h3 class="heading mb-3">24 Hours Service</h3>
                                        <p>A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 d-flex">
                   
                    <div class="appointment-wrap bg-white p-4 p-md-5 d-flex align-items-center">
                        <div action="#" class="appointment-form ftco-animate">
                             <div class="alert alert-success alert-dismissible fade show" role="alert" Visible="false" id="lable_data" runat="server">
                             <asp:Label ID="lable_msg" runat="server"></asp:Label>                       
                                <asp:Button ID="btnTest" runat="server" Text="X" onclick="btnTest_Click" />
                            </div>
                            <h3>Free Consultation</h3>
                            <div class="">
                                <div class="form-group">
                                    <asp:TextBox ID="patient_name" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="patient_last_name" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="">
                                <div class="form-group">
                                    <div class="form-field">
                                        <div class="select-wrap">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <asp:DropDownList runat="server" ID="departments" DataValueField="id" DataTextField="title" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="departments_SelectedIndexChanged"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-field">
                                        <div class="select-wrap">
                                            <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                            <asp:DropDownList runat="server" ID="doctors" DataValueField="id" DataTextField="name" class="form-control"></asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="">                               
                                <div class="form-group">
                                    <asp:TextBox runat="server" class="form-control" ID="inputPhone" placeholder="Phone No" type="number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputPhone" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="inputPhone" ErrorMessage="No should be of 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="">
                                <div class="form-group">
                                    <div class="input-wrap">
                                        <div class="icon"><span class="ion-md-calendar"></span></div>
                                        <asp:TextBox ID="date" runat="server" class="form-control appointment_date" placeholder="Date"></asp:TextBox>
                                        <cc1:CalendarExtender runat="server" Enabled="True" TargetControlID="date" ID="date_CalendarExtender"></cc1:CalendarExtender>
                                    </div>
</div>
<div class="form-group">
<div class="input-wrap">
<div class="icon"><span class="ion-ios-clock"></span></div>
    <asp:TextBox ID="time" runat="server" class="form-control appointment_time" placeholder="Time"></asp:TextBox>

</div>
</div>
</div>
<div class="">
<div class="form-group">
    <asp:TextBox runat="server" id="Message" name="message" class="form-control"  TextMode="MultiLine" Rows="2" placeholder="Message" style="border-color:#999999;width:100%"></asp:TextBox>                        

</div>
<div class="form-group">
     <asp:Button ID="submit_appointment" runat="server" class="btn btn-secondary py-3 px-4" Text="Appointment" OnClick="submit_appointment_Click" />
</div>
</div>
</div>
</div>
</div>
</div>
</div>
       
</section>
<section class="ftco-intro img" style="background-image: url(/front-assets/images/bg_2.jpg);">
<div class="overlay"></div>
<div class="container">
<div class="row justify-content-center">
<div class="col-md-9 text-center">
<h2>Your Health is Our Priority</h2>
<p>We can manage your dream building A small river named Duden flows by their place</p>
<p class="mb-0"><a href="#" class="btn btn-white px-4 py-3">Search Places</a></p>
</div>
</div>
</div>
    
</section>
    <hr style="border-top: 10px solid #207dff;width: 100%;margin-top:0px;margin-bottom:0px"/>
<section class="ftco-section ftco-no-pt ftco-no-pb">
<div class="container-fluid px-0">
<div class="row no-gutters">
<div class="col-md-4 d-flex">
<div class="img img-dept align-self-stretch" style="background-image: url(/front-assets/images/department.jpg);"></div>
</div>
<div class="col-md-8">
<div class="row no-gutters">


<asp:Repeater runat="server" ID="DepartmentRepeater">
<ItemTemplate>
    <div class="col-md-4">
<div class="department-wrap p-4 ftco-animate">
<div class="text p-2 text-center">
<div class="icon">
<span class="flaticon-stethoscope"></span>
</div>
<h3><a href="http://aastha.omtechnoware.com/Departments"><%#Eval("title")%></a></h3>
</div>
</div>
        </div>
    </ItemTemplate>
</asp:Repeater>
</div>


</div>
</div>
</div>
     <hr style="border-top: 10px solid #207dff;width: 100%;margin-top:0px"/>
</section>
   
<section class="ftco-section">
<div class="container-fluid px-5">
<div class="row justify-content-center mb-5 pb-2">
<div class="col-md-8 text-center heading-section ftco-animate">
<h2 class="mb-4">Our Qualified Doctors</h2>
<p>Separated they live in. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country</p>
</div>
</div>
<div class="row">

<asp:Repeater runat="server" ID="TeamRepeater">
   <ItemTemplate>
<div class="col-md-6 col-lg-3 ftco-animate">
<div class="staff">
<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(<%#Eval("image")%>);"></div>
</div>
<div class="text pt-3 text-center">
<h3 class="mb-2"><%#Eval("name")%></h3>
<span class="position mb-2"><%#Eval("designation")%></span>
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
    <%--<div class="" style="text-align:center">
        <p><a href="aastha.omtechnoware.com/Doctors" class="btn btn-primary">View All Doctors</a></p>
    </div>
    --%>
</div>
</section>
<section class="ftco-facts img ftco-counter" style="background-image: url(/front-assets/images/bg_3.jpg);">
<div class="overlay"></div>
<div class="container">
<div class="row d-flex align-items-center">
<div class="col-md-5 heading-section heading-section-white">
<span class="subheading">Fun facts</span>
<h2 class="mb-4">Over 5,100 patients trust us</h2>
<p class="mb-0"><a href="#" class="btn btn-secondary px-4 py-3">Make an appointment</a></p>
</div>
<div class="col-md-7">
<div class="row pt-4">
<div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
<div class="block-18">
<div class="text">
<strong class="number" data-number="30">0</strong>
<span>Years of Experienced</span>
</div>
</div>
</div>
<div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
<div class="block-18">
<div class="text">
<strong class="number" data-number="4500">0</strong>
<span>Happy Patients</span>
</div>
</div>
</div>
<div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
<div class="block-18">
<div class="text">
<strong class="number" data-number="84">0</strong>
<span>Number of Doctors</span>
</div>
</div>
</div>
<div class="col-md-6 d-flex justify-content-center counter-wrap ftco-animate">
<div class="block-18">
<div class="text">
<strong class="number" data-number="300">0</strong>
<span>Number of Staffs</span>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<section class="ftco-section bg-light" style="padding-bottom: 0px">
<div class="container">
<div class="row justify-content-center pb-5">
<div class="col-md-10 heading-section text-center ftco-animate">
<h2 class="mb-4">Gets Every Single Updates Here</h2>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
</div>
</div>
<div class="row d-flex">
<asp:Repeater runat="server" ID="BlogRepeater">
   <ItemTemplate>
        <div class="col-md-4 ftco-animate">
        <div class="blog-entry">
        <a href="aastha.omtechnoware.com/BlogDetail/<%#Eval("id")%>" class="block-20" style='background-image: url(<%#Eval("image")%>);'>
        </a>
        <div class="text d-block">
        <div class="meta mb-3">
        <div><a href="#"><%#Eval("created_date")%></a></div>
        <%--<div><a href="#">Admin</a></div>
        <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div>--%>
        </div>
        <h3 class="heading"><a href="aastha.omtechnoware.com/BlogDetail/<%#Eval("id")%>"><%#Eval("title")%></a></h3>
        <p><%#Eval("meta_description")%></p>
        <p><a href="aastha.omtechnoware.com/BlogDetail/<%#Eval("id")%>" class="btn btn-primary py-2 px-3">Read more</a></p>
        </div>
        </div>
        </div>
   </ItemTemplate>
</asp:Repeater>
      
</div>
 <%--   <div class="" style="text-align:center">
        <p><a href="blogPage.aspx" class="btn btn-primary">View All Blogs</a></p>
    </div>--%>
    
</div>
</section>
    <div>
<section class="ftco-section testimony-section img" style="background-image: url(/front-assets/images/bg_3.jpg);">
<div class="overlay"></div>
<div class="container">
<div class="row justify-content-center pb-3">
<div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
<span class="subheading">Read Sucess Stories</span>
<h2 class="mb-4">Our Patient Says</h2>
</div>
</div>
<div class="row ftco-animate justify-content-center">
<div class="col-md-12">
<div class="carousel-testimony owl-carousel ftco-owl">
    <asp:Repeater runat="server" ID="TestimonialRepeater">
        <ItemTemplate>
<div class="item">
<div class="testimony-wrap text-center py-4 pb-5">
<div class="user-img" style="background-image: url(<%#Eval("image")%>)">
<span class="quote d-flex align-items-center justify-content-center">
<i class="icon-quote-left"></i>
</span>
</div>
<div class="text px-4">
<p class="mb-4"><%#Eval("comment")%></p>
<p class="name"><%#Eval("name")%></p>
<span class="position"><%#Eval("profession")%></span>
</div>
</div>
</div>
            </ItemTemplate>
        </asp:Repeater>

</div>
</div>
</div>
      
</div>   
</section>
    
    </div>
<div class="modal" id="popupmodal" role="dialog" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top:150px">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modaltitle"><asp:Label ID="ModalTitle" runat="server"></asp:Label></h5>
      </div>
      <div class="modal-body">
          <asp:HyperLink id="Offer_image" runat="server">             
          </asp:HyperLink>
          
      </div>
      <div class="modal-footer">         
        <asp:Button class="btn btn-primary" id="hide_popUp" runat="server" Text="Close" OnClick="hide_popUp_Click"></asp:Button>        
      </div>
    </div>
  </div>
</div>
       
<script type="text/javascript" language="javascript">
    function ShowPopup() {
       $("#popupmodal").modal("show");
    }
    
</script>
</asp:Content>
