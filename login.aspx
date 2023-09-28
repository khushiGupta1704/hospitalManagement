<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="ftco-section contact-section" style="padding: 9em 0 3rem;">
                     <div class="alert alert-success alert-dismissible fade show" role="alert" visible="false" id="lable_data" runat="server">
                <asp:Label ID="lable_msg" runat="server"></asp:Label>
                <asp:Button ID="btnTest" runat="server" Text="X" OnClick="btnTest_Click" />
            </div>
       <h2 class="mb-4" style="text-align: center;">Login Into Your Account</h2>
        <div class="container" style="background-color:#f8f9fa;padding-bottom: 10px;max-width:450px">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <%--<h2 class="mb-4">Make An Appointment</h2>--%>
                    <%--<p>Knowledge is the Powerful weapon To change the World</p>--%>
                </div>
            </div>
            <div class="alert alert-success alert-dismissible fade show" role="alert" visible="false" id="Div1" runat="server">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="X" OnClick="btnTest_Click" />
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <asp:TextBox ID="inputEmail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>

                    </div>
                     </div>
                 </div>
            <div class="row">
                    <div class="col-md-12">
                   
                    <div class="form-group">
                        <asp:TextBox ID="textPassword" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
                    </div>
                </div>
                </div>

            <div class="form-group">
     <asp:Button id="submit_button" onclick="submit_button_Click" runat="server" class="btn btn-secondary py-3 px-4" Text="Login" />
            </div>
            </div>
</section>







        
</asp:Content>
