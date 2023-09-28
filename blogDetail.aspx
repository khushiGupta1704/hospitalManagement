<%@ Page Title="" Language="C#" MasterPageFile="~/FrontMasterPage.master" AutoEventWireup="true" CodeFile="blogDetail.aspx.cs" Inherits="blogDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="hero-wrap hero-wrap-2" style="background-image: url();" data-stellar-background-ratio="0.5" id="detail_image" runat="server">
<div class="overlay"></div>
<div class="container">
<div class="row no-gutters slider-text align-items-end justify-content-start">
<div class="col-md-9 ftco-animate pb-4">
<h1 class="mb-3 bread">Blog Details</h1>
<p class="breadcrumbs"><span class="mr-2"><a href="index-2.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Blog Single <i class="ion-ios-arrow-forward"></i></span></p>
</div>
</div>
</div>
</section>
<section class="ftco-section">
<div class="container">
<div class="row">
<div class="col-lg-8 ftco-animate">
<h2 class="mb-3"><asp:Label ID="lable_title" runat="server"></asp:Label></h2>
<p><asp:Label ID="label_description" runat="server"></asp:Label></p>
</div> 
<div class="col-lg-4 sidebar ftco-animate">
<div class="sidebar-box">
</div>
<div class="sidebar-box ftco-animate">
<h3 class="heading-sidebar">Departments</h3>
<ul class="categories">
<asp:Repeater runat="server" ID="DepartmentCountRepeater">
<ItemTemplate>
<li><a href="http://aastha.omtechnoware.com/Blogs"><%#Eval("exp1")%> <span>(<%#Eval("blog_count")%>)</span></a></li>
</ItemTemplate>
</asp:Repeater>

</ul>
</div>
<div class="sidebar-box ftco-animate">
<h3 class="heading-sidebar">Recent Blog</h3>
<asp:Repeater runat="server" ID="BlogRepeater">
    <ItemTemplate>
<div class="block-21 mb-4 d-flex">
<a class="blog-img mr-4" style="background-image: url(http://aastha.omtechnoware.com/<%#Eval("image")%>)"></a>
<div class="text">
<h3 class="heading"><a href="#"><%#Eval("title")%></a></h3>
<div class="meta">
<div><a href="http://aastha.omtechnoware.com/BlogDetail/<%#Eval("id")%>"><span class="icon-calendar"></span> <%#Eval("created_date")%></a></div>
</div>
</div>
</div>
</ItemTemplate>
</asp:Repeater>
</div>
<div class="sidebar-box ftco-animate">
<h3 class="heading-sidebar">Tag Cloud</h3>
<div class="tagcloud">
<asp:Repeater runat="server" ID="TagRepeater">
<ItemTemplate>
<a href="<%#Eval("url")%>" class="tag-cloud-link"><%#Eval("title")%></a>
</ItemTemplate>
</asp:Repeater>
</div>
</div>
<%--<div class="sidebar-box ftco-animate">
<h3 class="heading-sidebar">Paragraph</h3>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
</div>--%>
</div>
</div>
</div>
</section> 









      <%--<section style="background-image: url(http://aastha.omtechnoware.com/front-assets/images/bg-image-1.jpg);"
        class="section-30 section-sm-40 section-md-66 section-lg-bottom-30 bg-gray-dark page-title-wrap">
        <div class="shell">
          <div class="page-title">
            <h2>Blog Detail</h2>
          </div>
        </div>
      </section>
 <section class="section-60 section-sm-75 section-lg-100">
      <div class="shell">
        <div class="range">
          <div class="cell-md-8 cell-lg-9">
            <article class="post post-single">
              <div class="post-image">
                 <figure> <asp:Image ID="image" runat="server" width="870" height="412" /></figure>
              </div>
              <div class="post-header">
               <h1> <asp:Label ID="lable_title" runat="server"  style="font-size:30px"></asp:Label></h1>
              </div>
              <div class="post-meta">
                <ul class="list-bordered-horizontal">
                  <li>
                    <dl class="list-terms-inline">
                      <dt>Date</dt>
                      <dd>
                        <time datetime="2016-01-22">January 22, 2016</time>
                      </dd>
                    </dl>
                  </li>
                  <li>
                    <dl class="list-terms-inline">
                      <dt>Posted by</dt>
                      <dd>Amelia Lee</dd>
                    </dl>
                  </li>
                  <li>
                    <dl class="list-terms-inline">
                      <dt>Comments</dt>
                      <dd>3</dd>
                    </dl>
                  </li>
                  <li>
                    <dl class="list-terms-inline">
                      <dt>Category</dt>
                      <dd>Marketing</dd>
                    </dl>
                  </li>
                </ul>
              </div>
              <div class="divider-fullwidth bg-gray-light offset-top-15"></div>
              <div class="post-body">
                <asp:Label ID="label_description" runat="server"></asp:Label>
              </div>
            </article>
            <div class="divider-fullwidth bg-gray-lighter offset-top-40"></div>
            <div class="offset-top-40">
              <%--<h4>3 Comments</h4>--%>
             <%-- <div class="comment-list inset-sm-right-60 inset-md-right-30 inset-lg-right-100 offset-top-30">
                   <asp:Repeater runat="server" ID="Repeater3" OnItemDataBound="Repeater3_ItemDataBound1">
                      <ItemTemplate>
                <div class="comment-group">
                  <article class="comment">
                    <div class="unit unit-spacing-md unit-xs-horizontal">
                      <div class="unit-left">
                        <figure><img src="../<%#Eval("user_image")%>" alt="" width="70" height="71"/> </figure>
                      </div>
                      <div class="unit-body">
                        <div class="comment-body">
                          <div class="comment-body-header">
                            <div class="comment-meta">
                              <p class="user"><%#Eval("user_name")%></p>
                              <ul class="list-inline list-icon-meta">--%>
                                <%--<li><a href="#" class="link-group link-group-baseline"><span class="icon icon-xxs-smaller icon-dusty-gray mdi mdi-thumb-up-outline"></span><span>Like</span></a></li>
                              <%--  <li><a href="#" class="link-group"><span class="icon icon-xxs-smaller icon-dusty-gray mdi mdi-comment-outline"></span><span>Reply</span></a></li>--%>
                            <%--  </ul>
                            </div>
                            <div class="comment-time">
                              <div class="object-inline">
                                <time datetime="2016-02-16"><%#Eval("created_date")%></time>
                                <span class="icon icon-xxs-smaller icon-dusty-gray mdi mdi-clock"></span> </div>
                            </div>
                          </div>
                          <div class="comment-body-text">
                            <p class="text-gray-base"><%#Eval("comment_text")%></p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </article>
                  <div class="comment-group-reply">
                      <asp:Repeater runat="server" ID="Repeater4">
                      <ItemTemplate>                          
                    <article class="comment">
                      <div class="unit unit-spacing-md unit-xs-horizontal">
                        <div class="unit-left">
                          <figure><img src="../<%#Eval("profile")%>" alt="" width="70" height="71"/> </figure>
                        </div>
                        <div class="unit-body">
                          <div class="comment-body">
                            <div class="comment-body-header">
                              <div class="comment-meta">
                                <p class="user"><%#Eval("name")%></p>--%>
                               <%-- <ul class="list-inline list-icon-meta">
                                  <li><a href="#" class="link-group link-group-baseline"><span class="icon icon-xxs-smaller icon-dusty-gray mdi mdi-thumb-up-outline"></span><span>Like</span></a></li>
                                  <li><a href="#" class="link-group"><span class="icon icon-xxs-smaller icon-dusty-gray mdi mdi-comment-outline"></span><span>Reply</span></a></li>
                                </ul>--%>
                             <%-- </div>
                              <div class="comment-time">
                                <div class="object-inline">
                                  <time datetime="2016-02-16"><%#Eval("created_date")%></time>
                                  <span class="icon icon-xxs-smaller icon-dusty-gray mdi mdi-clock"></span> </div>
                              </div>
                            </div>--%>
<%--                            <div class="comment-body-text">
                              <p class="text-gray-base"><%#Eval("reply_text")%></p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </article>
                          </ItemTemplate>
                                        </asp:Repeater> 
                      
                  </div>
                    <asp:Label ID="comment_id" runat="server" Visible="false" Text='<%#Eval("comment_id")%>'></asp:Label>--%>

                    <%--<div id="replyText" runat="server" visible="true"> <a href="http://aastha.omtechnoware.com/Login" style="color:red">Login Here To Reply</a></div>--%>
                     
               <%-- </div>
                 </ItemTemplate>
                                        </asp:Repeater>                               

              </div>
           
            <div class="offset-top-45">
              <h4>Leave a comment</h4>             --%>
                <%--<asp:LinkButton ID="rating" runat="server"><i class="fa fa-star></i></asp:LinkButton>--%>
              <%--<div class="inset-sm-right-60 inset-md-right-30 inset-lg-right-100 offset-top-15 offset-lg-top-5">
                <div class="rd-mailform form-classic form-classic-bordered label-outside">
                    <div id="CommentSection" runat="server">
                  <div class="form-group">
                      <asp:Label ID="lable_id" runat="server" Visible="false"></asp:Label>
                    <asp:TextBox runat="server" id="message" name="message" class="form-control-textarea"  TextMode="MultiLine" Rows="10" Columns="100" placeholder="Message"></asp:TextBox>
                       
                  </div>
                  <div class="offset-top-35">
                    <asp:Button ID="Comment_message" runat="server" type="submit" style="min-width: 200px;" class="btn btn-primary" onclick="Comment_message_Click" Text="Submit"></asp:Button>
                  </div>
                        </div>--%>
                   <%-- <div id="LoginComment" runat="server" visible="False">
                        <a href="http://aastha.omtechnoware.com/Login" style="color:red">Login Here To comment</a>
                    </div>--%>
               <%-- </div>
              </div>
            </div>
            </div>
          </div>
                <div class="cell-md-4 cell-lg-3 offset-top-50 offset-md-top-0">
                    <div class="inset-md-left-15">
                        <div class="range">
                            <div class="cell-sm-6 cell-md-12">
                                <div class="offset-top-45">
                                    <h6 class="text-small-16 text-bold text-uppercase">Department Blogs</h6>
                                    <ul class="list-marked-bordered offset-top-5">
                                        <asp:Repeater runat="server" ID="Repeater1">
                                            <ItemTemplate>
                                                <li><a href="http://aastha.omtechnoware.com/Blogs"><span><%#Eval("exp1")%></span><span class="text-dusty-gray">(<%#Eval("blog_count")%>)</span></a></li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                                <div class="offset-top-45">
                                    <h6 class="text-small-16 text-bold text-uppercase">Popular posts</h6>
                                    <div class="offset-top-22">
                                        <asp:Repeater runat="server" ID="Repeater2">
                                            <ItemTemplate>
                                        <article class="post post-preview offset-top-15">
                                            <a href="blog-post.html">
                                                <div class="unit unit-horizontal unit-spacing-sm">
                                                    <div class="unit-left">--%>
                                                        <%--<figure class="post-image">
                                                            <img src="http://aastha.omtechnoware.com/images/post-preview-1-70x70.jpg" alt="" width="70"
                                                                height="70" />
                                                        </figure>--%>
                                                   <%-- </div>
                                                    <div class="unit-body">
                                                        <div class="post-header">
                                                            <p><%#Eval("title")%></p>
                                                        </div>
                                                        <div class="post-meta">
                                                            <ul class="list-meta">
                                                                <li>
                                                                    <time datetime="2016-12-23"><%#Eval("created_date","{0:MMM-dd-yyyy}")%></time>
                                                                </li>
                                                                <%--<li>4 Comment</li>--%>
                                                           <%-- </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </article>
                                                </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                            <div class="cell-sm-6 cell-md-12 offset-top-50 offset-sm-top-0 offset-md-top-45">
                                <h6 class="text-small-16 text-bold text-uppercase">Twitter feed</h6>
                                <div data-twitter-username="templatemonster" class="twitter offset-top-30">
                                    <div data-twitter-type="tweet" class="twitter-item twitter-item-minimal">
                                        <div class="object-inline-baseline">
                                            <a href="#" data-url="href"
                                                class="icon icon-xxs icon-primary fa-twitter"></a>
                                            <time data-date="text,datetime" datetime="2016-04-20"></time>
                                        </div>
                                        <p data-tweet="text" class="tweet-text"></p>
                                        <p data-screen_name="text" data-user_name="href" class="tweet-user"></p>
                                    </div>
                                    <div data-twitter-type="tweet" class="twitter-item twitter-item-minimal">
                                        <div class="object-inline-baseline">
                                            <a href="#" data-url="href"
                                                class="icon icon-xxs icon-primary fa-twitter"></a>
                                            <time data-date="text,datetime" datetime="2016-04-20"></time>
                                        </div>
                                        <p data-tweet="text" class="tweet-text"></p>
                                        <p data-screen_name="text" data-user_name="href" class="tweet-user"></p>
                                    </div>
                                    <div data-twitter-type="tweet" class="twitter-item twitter-item-minimal">
                                        <div class="object-inline-baseline">
                                            <a href="#" data-url="href"
                                                class="icon icon-xxs icon-primary fa-twitter"></a>
                                            <time data-date="text,datetime" datetime="2016-04-20"></time>
                                        </div>
                                        <p data-tweet="text" class="tweet-text"></p>
                                        <p data-screen_name="text" data-user_name="href" class="tweet-user"></p>
                                    </div>
                                </div>
                                <div class="offset-top-45">
                                    <h6 class="text-small-16 text-bold text-uppercase">Tags</h6>
                                    <ul class="list-tag-blocks offset-top-22">
                                        <asp:Repeater runat="server" ID="Repeater5">
                                            <ItemTemplate>
                                        <li><a href="<%#Eval("url")%>"><%#Eval("title")%></a></li> 

                                         </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </div>
      </div>
    </section>--%>

</asp:Content>
