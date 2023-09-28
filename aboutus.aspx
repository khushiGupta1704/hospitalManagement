<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
      <style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
  }
  </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="ftco-section contact-section" id="contact-section" style="padding: 7em 0 3rem;">
         <asp:Label ID="lable_msg" runat="server" class="alert alert-success" Visible="false">Add a Blog</asp:Label>
<div class="row justify-content-center mb-5 pb-3" style="background-color: whitesmoke;margin-right:0px">
<div class="col-md-10 heading-section text-center ftco-animate">
<h2 class="" style="padding-top:30px">About Us</h2>
<p>We are always trying to give our Best.</p>
</div>
</div>
         <div class="container">
         <div class="row" style="margin-bottom:50px">
             <div class="col-md-6">
                  <img src="/front-assets/images/hospital-about.jpg" style="width:inherit" />
             </div>
             <div class="col-md-6">
                 <div class="row justify-content-start pb-3">
                            <div class="col-md-12 heading-section ftco-animate">
                                <h2 class="mb-4">We Are <span>Aastha Hospital</span> A Medical Hospital</h2>
                                <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                            </div>
                        </div>
             </div>
         </div>
             </div>
  

<section class="ftco-section"  style="background-color:#f8f9fa">
<div class="container">
<div class="row">
<div class="col-lg-12 ftco-animate">
<h2 class="mb-3">Aastha Hospital works every second of the day, to heal its patients.</h2>
<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ex nulla doloremque id iure praesentium iste non tempora iusto consequuntur dolorum officia perspiciatis assumenda magnam ut tempore distinctio rem eius, dignissimos voluptate saepe. Odit quod et officia quasi officiis. In obcaecati velit, soluta saepe assumenda nihil. Ipsa doloribus rem neque qui.</p>
<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ex nulla doloremque id iure praesentium iste non tempora iusto consequuntur dolorum officia perspiciatis assumenda magnam ut tempore distinctio rem eius, dignissimos voluptate saepe. Odit quod et officia quasi officiis. In obcaecati velit, soluta saepe assumenda nihil. Ipsa doloribus rem neque qui.</p>
<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ex nulla doloremque id iure praesentium iste non tempora iusto consequuntur dolorum officia perspiciatis assumenda magnam ut tempore distinctio rem eius, dignissimos voluptate saepe. Odit quod et officia quasi officiis. In obcaecati velit, soluta saepe assumenda nihil. Ipsa doloribus rem neque qui.</p>
<%--<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ex nulla doloremque id iure praesentium iste non tempora iusto consequuntur dolorum officia perspiciatis assumenda magnam ut tempore distinctio rem eius, dignissimos voluptate saepe. Odit quod et officia quasi officiis. In obcaecati velit, soluta saepe assumenda nihil. Ipsa doloribus rem neque qui.</p>
<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ex nulla doloremque id iure praesentium iste non tempora iusto consequuntur dolorum officia perspiciatis assumenda magnam ut tempore distinctio rem eius, dignissimos voluptate saepe. Odit quod et officia quasi officiis. In obcaecati velit, soluta saepe assumenda nihil. Ipsa doloribus rem neque qui.</p>
<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ex nulla doloremque id iure praesentium iste non tempora iusto consequuntur dolorum officia perspiciatis assumenda magnam ut tempore distinctio rem eius, dignissimos voluptate saepe. Odit quod et officia quasi officiis. In obcaecati velit, soluta saepe assumenda nihil. Ipsa doloribus rem neque qui.</p>--%>

</div> 

</div>
</div>
</section> 
          <section class="ftco-section testimony-section img" style="background-color:white">
<div class="container">
<div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <%--<ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>--%>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
          <asp:Repeater runat="server" ID="SliderRepeater">
        <ItemTemplate>
            <%--<asp:Label ID="" runat="server" Text="<%# Container.ItemIndex + 1 %>" Visible="false"></asp:Label>--%>
           <div id="repeater_index" style="display:none"><%# Container.ItemIndex + 1 %></div>
    <div class="carousel-item" id="<%# Container.ItemIndex + 1 %>">
      <img src='<%#Eval("image")%>' alt="Los Angeles" width="1100" height="500">
    </div>
              </ItemTemplate>
        </asp:Repeater>
      
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
      
</div>   
</div>   
</section>
            <section class="ftco-section ftco-no-pt ftco-no-pb ftco-services-2 bg-light">
        <div class="container">
            <div class="row justify-content-center py-md-5 py-lg-5">
                <div class="col-md-12 heading-section ftco-animate">
                    <h2 class="mb-3">Our Services</h2>
                </div>
            </div>
            <div class="row d-flex">
                            
                <div class="col-md-7 ">
                    <div class="">
                        <div class="">

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
                </div>
                                <div class="col-md-5">
                            
                   
                        <img src="/front-assets/images/Urologyr.jpeg" style="width:100%;"/>
                           
                </div>
            </div>
        </div>
    </section>
<div class="container">
<div class="row d-flex">

<div class="col-md-4 ftco-animate" style="padding-top:15px">
    <div style="background-color: #e8eaf13b;border-radius: 0px 0px 20px 0px;padding:10px">
<div class="staff">
<%--<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(<%#Eval("image")%>);"></div>
</div>--%>
<div class="text pt-3 text-center" style="background-color:inherit">
<%--<h3 class="mb-2"><a href="http://aastha.omtechnoware.com/DepartmentDetail/<%#Eval("id")%>"><%#Eval("title")%></a></h3>--%>
    <h3 class="mb-2">Our Mission</h3>
    <hr style="border-top: 5px solid #207dff;border-radius: 5px;width: 190px;"/>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus itaque accusantium recusandae animi quisquam nisi, ut quis repudiandae, quos, delectus consectetur libero aperiam doloremque. Alias eaque voluptate impedit iusto natus.></p>  
   
<div class="faded">
</div>
</div>
</div>
</div>
    </div>
       <div class="col-md-4 ftco-animate" style="padding-top:15px">
    <div style="background-color: #e8eaf13b;border-radius: 0px 0px 20px 0px;padding:10px">
<div class="staff">
<%--<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(<%#Eval("image")%>);"></div>
</div>--%>
<div class="text pt-3 text-center" style="background-color:inherit">
<%--<h3 class="mb-2"><a href="http://aastha.omtechnoware.com/DepartmentDetail/<%#Eval("id")%>"><%#Eval("title")%></a></h3>--%>
    <h3 class="mb-2">Our Vision</h3>
    <hr style="border-top: 5px solid #207dff;border-radius: 5px;width: 190px;" />
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus itaque accusantium recusandae animi quisquam nisi, ut quis repudiandae, quos, delectus consectetur libero aperiam doloremque. Alias eaque voluptate impedit iusto natus.</p>  
   
<div class="faded">
</div>
</div>
</div>
</div>
    </div>
       <div class="col-md-4 ftco-animate" style="padding-top:15px">
    <div style="background-color: #e8eaf13b;border-radius: 0px 0px 20px 0px;padding:10px">
<div class="staff">
<%--<div class="img-wrap d-flex align-items-stretch">
<div class="img align-self-stretch" style="background-image: url(<%#Eval("image")%>);"></div>
</div>--%>
<div class="text pt-3 text-center" style="background-color:inherit">
<%--<h3 class="mb-2"><a href="http://aastha.omtechnoware.com/DepartmentDetail/<%#Eval("id")%>"><%#Eval("title")%></a></h3>--%>
    <h3 class="mb-2">Our Quality</h3>
    <hr style="border-top: 5px solid #207dff;border-radius: 5px;width: 190px;"/>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus itaque accusantium recusandae animi quisquam nisi, ut quis repudiandae, quos, delectus consectetur libero aperiam doloremque. Alias eaque voluptate impedit iusto natus.</p>  
   
<div class="faded">
</div>
</div>
</div>
</div>
    </div>
</div>
</div>
</section>

     <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        $(document).ready(function () {
            var val1 = $("#repeater_index").html();
            if (val1=='1') {
                $("#1").addClass("active");
            }
        });
    </script>

</asp:Content>
