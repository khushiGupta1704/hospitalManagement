<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="faq.aspx.cs" Inherits="faq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      

    <section class="ftco-section contact-section" id="contact-section" style="padding: 9em 0 3rem;">
         
<div class="container">
<div class="row justify-content-center mb-5 pb-3">
<div class="col-md-7 heading-section text-center ftco-animate">
<h2 class="mb-4">Faqs</h2>
<p>You can Search For what You want to Know.</p>
</div>
</div>
    

    
                    
                                         <asp:Repeater runat="server" ID="FaqRepeater">
                    <ItemTemplate >
                       <div class="row">
    			 <div class=" col-md-12 accordion-process">
                    <div class="accordion-warp">
                        <div class="panel-group" id="accordion" style="max-width:100%">
                            <div class="panel panel-default">
                                <div class="panel-heading"  style="background-color:#1d81fd">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#1" class="collapsed" aria-expanded="false" style="color:white"><%#Eval("question")%></a>
                                    </h4>
                                </div>
                                <div id="1" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div class="accordion-content">
                                            <p style="color: black !important;"><%#Eval("answer")%></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End panel group -->
                    </div>
                     </div>
                </div>
 </ItemTemplate>                    
                </asp:Repeater>
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
