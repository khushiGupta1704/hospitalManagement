﻿<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="ftco-section contact-section" id="contact-section" style="padding: 7em 0 3rem;">
         <asp:Label ID="lable_msg" runat="server" class="alert alert-success" Visible="false">Add a Blog</asp:Label>

<div class="row justify-content-center mb-5 pb-3" style="background-color: whitesmoke;margin-right:0px">
<div class="col-md-7 heading-section text-center ftco-animate">
<h2 class="" style="padding-top:30px">Contact Us</h2>
<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia</p>
</div>
</div>
        <div class="container">
<div class="row d-flex contact-info mb-5">
<div class="col-md-6 col-lg-3 d-flex ftco-animate">
<div class="align-self-stretch box p-4 text-center bg-light">
<div class="icon d-flex align-items-center justify-content-center">
<span class="icon-map-signs"></span>
</div>
<h3 class="mb-4">Address</h3>
<p>81-s Model Town Market Road Hisar,Haryana 125001</p>
</div>
</div>
<div class="col-md-6 col-lg-3 d-flex ftco-animate">
<div class="align-self-stretch box p-4 text-center bg-light">
<div class="icon d-flex align-items-center justify-content-center">
<span class="icon-phone2"></span>
</div>
<h3 class="mb-4">Contact Number</h3>
<p><a href="tel://1234567920">+ 1235 2355 98</a></p>
</div>
</div>
<div class="col-md-6 col-lg-3 d-flex ftco-animate">
<div class="align-self-stretch box p-4 text-center bg-light">
<div class="icon d-flex align-items-center justify-content-center">
<span class="icon-paper-plane"></span>
</div>
<h3 class="mb-4">Email Address</h3>
<p><a href="https://preview.colorlib.com/cdn-cgi/l/email-protection#0f666169604f76607a7d7c667b6a216c6062"><span class="__cf_email__" data-cfemail="dfb6b1b9b09fa6b0aaadacb6abbaf1bcb0b2">omtechnoware@gmail.com</span></a></p>
</div>
</div>
<div class="col-md-6 col-lg-3 d-flex ftco-animate">
<div class="align-self-stretch box p-4 text-center bg-light">
<div class="icon d-flex align-items-center justify-content-center">
<span class="icon-globe"></span>
</div>
<h3 class="mb-4">Website</h3>
<p><a href="https://a2zsolutionco.com/">a2zsolutionco.com</a></p>
</div>
</div>
</div>
<div class="row no-gutters block-9">
<div class="col-md-12 order-md-last d-flex">
<div action="#" class="bg-light p-5 contact-form">
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <asp:TextBox runat="server" id="contactName" type="text" class="form-control" placeholder="Your Name"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="contactName" ErrorMessage="*Required"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                 <asp:TextBox runat="server" id="contactEmail" type="email" name="email" class="form-control" placeholder= "Your Email"></asp:TextBox>                      
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="contactEmail" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="contactEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
            </div>
        </div>
    </div>


<div class="row">
<div class="col-md-6">
    <div class="form-group">
        <asp:TextBox runat="server" id="inputPhone" type="text" name="phone_no" class="form-control" placeholder="Your Phone No"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inputPhone" ErrorMessage="*Required"></asp:RequiredFieldValidator>
        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="inputPhone" ErrorMessage="Value must be Number" /><br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inputPhone" ErrorMessage="No should be of 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
    </div>
    </div>
    <div class="col-md-6">
    <div class="form-group">
        <asp:TextBox runat="server" id="address" type="text" name="address" class="form-control" placeholder="Your Address"></asp:TextBox>                      
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="address" ErrorMessage="*Required"></asp:RequiredFieldValidator>
    </div>
    </div>
</div>
<div class="row">
<div class="col-md-6">
<div class="form-group">
    <asp:TextBox runat="server" id="textCity" type="text" class="form-control" placeholder="Your City"></asp:TextBox>                      
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="textCity" ErrorMessage="*Required"></asp:RequiredFieldValidator>
</div>
     </div>
    <div class="col-md-6">
<div class="form-group">                                
    <asp:DropDownList runat="server" ID="selectState" DataValueField="id" DataTextField="name" class="form-control"></asp:DropDownList>                                    
</div>
         </div>
</div>
    <div class="row">
<div class="col-md-6">
<div class="form-group">
    <asp:TextBox runat="server" id="textPinCode" type="text" name="phone_no" class="form-control" placeholder="Pin Code"></asp:TextBox>                      
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="textPinCode" ErrorMessage="*Required"></asp:RequiredFieldValidator>
    <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="textPinCode" ErrorMessage="Value must be Number" /><br />
</div>
     </div>
    <div class="col-md-6">
<div class="form-group">
    <asp:TextBox runat="server" id="inputSubject" type="text" name="address" class="form-control" placeholder="Subject"></asp:TextBox>                      
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="inputSubject" ErrorMessage="*Required"></asp:RequiredFieldValidator>
</div>
        </div>
</div>
<div class="form-group">
    <asp:TextBox runat="server" id="contactMessage" name="message" class="form-control-textarea"  TextMode="MultiLine" Rows="7" placeholder="Message" style="border-color:#999999;width:100%"></asp:TextBox>                        
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="contactMessage" ErrorMessage="*Required"></asp:RequiredFieldValidator>
</div>
<div class="form-group">
     <asp:Button runat="server" class="btn btn-secondary py-3 px-5" id="button_submit" Onclick="button_submit_Click" Text="Send Message"></asp:Button>
</div>
</div>
</div>
</div>

    <div class="row no-gutters block-9" style="margin-top: 40px">
     <div class="col-md-12 d-flex">
    <div id="map" class="bg-white"></div>
</div>
    </div>
</div>
</section>
<%-- <section style="background-image: url(front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
          <div class="page-title">
            <h2>Contact Us</h2>
          </div>
        </div>
      </section>
<section class="section-60 section-sm-top-90 section-sm-bottom-100">
        <div class="shell">
          <div class="range range-xs-center range-md-left">
            <div class="cell-md-7 cell-lg-6">
              <h3>Get in <span class="text-thin">Touch</span></h3>
              <div class="rd-mailform form-modern offset-top-15">
                  <asp:Label ID="lable_msg" runat="server" class="alert alert-success" Visible="false">Add a Blog</asp:Label>
                <div class="range">
                  <div class="cell-sm-6">
                    <div class="form-group">
                      <asp:TextBox runat="server" id="contactName" type="text" name="name" class="form-control" placeholder="Name"></asp:TextBox>
                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="contactName" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                  <div class="cell-sm-6 offset-top-30 offset-sm-top-0">
                    <div class="form-group">
                      <asp:TextBox runat="server" id="contactEmail" type="email" name="email" class="form-control" placeholder="Email"></asp:TextBox>
                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="contactEmail" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="contactEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                    </div>
                  </div>
                    <div class="cell-sm-6">
                    <div class="form-group">
                      <asp:TextBox runat="server" id="inputPhone" type="text" name="phone_no" class="form-control" placeholder="Phone No"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="inputPhone" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="inputPhone" ErrorMessage="Value must be Number" /><br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inputPhone" ErrorMessage="No should be of 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
                    </div>
                  </div>
                  <div class="cell-sm-6 offset-top-30 offset-sm-top-0">
                    <div class="form-group">
                      <asp:TextBox runat="server" id="address" type="text" name="address" class="form-control" placeholder="Address"></asp:TextBox>
                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="address" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                <div class="cell-sm-6">
                    <div class="form-group">
                      <asp:DropDownList class="form-control" runat="server" ID="selectState">
                                    <asp:ListItem Value="haryana">Haryana</asp:ListItem>
                                    <asp:ListItem Value="punjab">Punjab</asp:ListItem>
                                    <asp:ListItem Value="delhi">Delhi</asp:ListItem>
                                </asp:DropDownList>
                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="selectState" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                  <div class="cell-sm-6 offset-top-30 offset-sm-top-0">
                    <div class="form-group">
                      <asp:TextBox runat="server" id="textCity" type="text" name="address" class="form-control" placeholder="City"></asp:TextBox>
                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="textCity" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                  <div class="cell-sm-6">
                    <div class="form-group">
                      <asp:TextBox runat="server" id="textPinCode" type="text" name="phone_no" class="form-control" placeholder="Pin Code"></asp:TextBox>
                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="textPinCode" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="textPinCode" ErrorMessage="Value must be Number" /><br />
                    </div>
                  </div>
                  <div class="cell-sm-6 offset-top-30 offset-sm-top-0">
                    <div class="form-group">
                      <asp:TextBox runat="server" id="inputSubject" type="text" name="address" class="form-control" placeholder="Subject"></asp:TextBox>
                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="inputSubject" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                    </div>
                  </div>
                  <div class="cell-xs-12 offset-top-30">
                    <div class="form-group">
                      <div class="textarea-lined-wrap">
                        <asp:TextBox runat="server" id="contactMessage" name="message" class="form-control-textarea"  TextMode="MultiLine" Rows="5" placeholder="Message"></asp:TextBox>
                        
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="contactMessage" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                      </div>
                    </div>
                  </div>
                  <div class="cell-xs-8 offset-top-30 offset-xs-top-30 offset-sm-top-60">
                    <asp:Button runat="server" class="btn btn-primary btn-block" id="button_submit" Onclick="button_submit_Click" Text="Send"></asp:Button>
                  </div>
                  <div class="cell-xs-4 offset-top-22 offset-xs-top-30 offset-sm-top-60">
                    <button type="reset" class="btn btn-silver-outline btn-block">Reset</button>
                  </div>
                </div>
              </div>
            </div>
            <div class="cell-lg-1 veil reveal-lg-inline-block"></div>
            <div class="cell-md-5 cell-lg-4 offset-top-50 offset-md-top-0">
              <div class="range">
                <div class="cell-sm-10 cell-md-12">
                  <h3>How to <span class="text-thin">Find Us</span></h3>
                  <p class="offset-sm-top-30 text-secondary"> If you have any questions, just fill in the contact form,
                    and we will answer you shortly. If you are living nearby, come visit us. </p>
                </div>
                <div class="cell-sm-6 cell-md-12 offset-top-35">
                  <h4>Headquarters</h4>
                  <address class="contact-info">
                    <p class="text-uppercase">#76, IInd Floor, Red Cross Market, Railway Road<br> Near Arora News
                      Agency<br> Mehta Nagar, Hisar<br></p>
                    <dl class="list-terms-inline">
                      <dt>Telephone</dt>
                      <dd><a href="callto:#" class="link-secondary">91-99920-48455</a></dd>
                    </dl>
                    <dl class="list-terms-inline">
                      <dt>E-mail</dt>
                      <dd><a href="#280b" class="link-primary"><span class="__cf_email__"
                            data-cfemail="4c212d25200c282921232025222762233e2b">a2zsolutionco@gmail.com</span></a></dd>
                    </dl>
                  </address>
                </div>
                <div class="cell-sm-6 cell-md-12 offset-top-35">
                  <h4>Support Centre</h4>
                  <address class="contact-info">
                    <p class="text-uppercase">#76, IInd Floor, Red Cross Market, Railway Road<br> Near Arora News
                      Agency<br> Mehta Nagar, Hisar<br></p>
                    <dl class="list-terms-inline">
                      <dt>Telephone</dt>
                      <dd><a href="callto:#" class="link-secondary">91-99920-48455</a></dd>
                    </dl>
                    <dl class="list-terms-inline">
                      <dt>E-mail</dt>
                      <dd><a href="#c5e6" class="link-primary"><span class="__cf_email__"
                            data-cfemail="523f333b3e1236373f3d3e3b3c397c3d2035">a2zsolutionco@gmail.com</span></a></dd>
                    </dl>
                  </address>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <div class="rd-google-map">
        <div class="overlay rd-google-map__model" onClick="style.pointerEvents='none'"></div>
        <iframe class="rd-google-map__model"
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387142.8404068987!2d-74.2581973675357!3d40.70583158554698!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2zVGjDoG5oIHBo4buRIE5ldyBZb3JrLCBUaeG7g3UgYmFuZyBOZXcgWW9yaw!5e0!3m2!1svi!2s!4v1480613299202"
          allowfullscreen></iframe>
      </div>--%>
</asp:Content>
