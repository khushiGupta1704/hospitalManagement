<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="appointment.aspx.cs" Inherits="appointment" %>

<%@ Register TagPrefix="cc1" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:Repeater runat="server" ID="SliderRepeater">
<ItemTemplate>
        <section class="hero-wrap hero-wrap-2" style="background-image: url(<%#Eval("image")%>);" data-stellar-background-ratio="0.5">
<div class="overlay"></div>
<div class="container">
<div class="row no-gutters slider-text align-items-end justify-content-start">
<div class="col-md-9 ftco-animate pb-4">
<h1 class="mb-3 bread">Appointment</h1>
<p class="breadcrumbs"><span class="mr-2"><a href="index-2.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Appointment <i class="ion-ios-arrow-forward"></i></span></p>
</div>
</div>
</div>
</section>
    
    </ItemTemplate>
    </asp:Repeater>
    <section class="ftco-section contact-section" style="padding: 3em 0 3rem;">
       <h2 class="mb-4" style="text-align: center;">Make An Appointment</h2>
        <div class="container" style="background-color:#f8f9fa;padding-bottom: 10px;">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <%--<h2 class="mb-4">Make An Appointment</h2>--%>
                    <%--<p>Knowledge is the Powerful weapon To change the World</p>--%>
                </div>
            </div>
            <div class="alert alert-success alert-dismissible fade show" role="alert" visible="false" id="lable_data" runat="server">
                <asp:Label ID="lable_msg" runat="server"></asp:Label>
                <asp:Button ID="btnTest" runat="server" Text="X" OnClick="btnTest_Click" />
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:TextBox ID="patient_name" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>

                    </div>
                     </div>
                    <div class="col-md-6">
                   
                    <div class="form-group">
                        <asp:TextBox ID="patient_last_name" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                    </div>
                </div>
                </div>
                <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <div class="form-field">
                            <div class="select-wrap">
                                <%--<div class="icon"><span class="ion-ios-arrow-down"></span></div>--%>
                                <asp:DropDownList runat="server" ID="departments" DataValueField="id" DataTextField="title" class="form-control" AutoPostBack="true" OnSelectedIndexChanged="departments_SelectedIndexChanged"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col-md-6">
                    <div class="form-group">
                        <div class="form-field">
                            <div class="select-wrap">
                                <%--<div class="icon"><span class="ion-ios-arrow-down"></span></div>--%>
                                <asp:DropDownList runat="server" ID="doctors" DataValueField="id" DataTextField="name" class="form-control"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                    
                </div>
                 <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:TextBox runat="server" class="form-control" ID="inputPhone" placeholder="Phone No" type="number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputPhone" ErrorMessage="*Required"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="inputPhone" ErrorMessage="No should be of 10 digit" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </div>
                </div>
                     
                    <div class="col-md-6">
               
                    <div class="form-group">
                        <div class="input-wrap">
                           
                            <asp:TextBox ID="date" runat="server" class="form-control appointment_date" placeholder="Date"></asp:TextBox>

                            <cc1:CalendarExtender runat="server" Enabled="True" TargetControlID="date" ID="date_CalendarExtender"></cc1:CalendarExtender>
                        </div>
</div>
                     </div>
                </div>
            <div class="row">
                <div class="col-md-6">
<div class="form-group">
<div class="input-wrap">
    <asp:TextBox ID="time" runat="server" class="form-control appointment_time" placeholder="Time"></asp:TextBox>

</div>
</div>
</div>
                 </div>
            
<div class="form-group">
    <asp:TextBox runat="server" id="Message" name="Message" class="form-control-textarea"  TextMode="MultiLine" Rows="7" placeholder="Message" style="border-color:#999999;width:100%"></asp:TextBox>                        
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Message" ErrorMessage="*Required"></asp:RequiredFieldValidator>

</div>
            <div class="form-group">
     <asp:Button ID="submit_appointment" runat="server" class="btn btn-secondary py-3 px-4" Text="Appointment" OnClick="submit_appointment_Click" />
</div>
            </div>
</section>
</asp:Content>
