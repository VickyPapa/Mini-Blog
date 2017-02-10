<%@ pagecontentType="text/html;charset=gb2312" %>
<%@ page import="dao.BlogsDao" %>
<%@ page import="tool.DatabaseConn" %>
<%@ page import="bean.Blogs" %>
<!DOCTYPE html>
<jsp:useBean id="preblogs" class="bean.Blogs" scope="session"></jsp:useBean>
<jsp:setProperty name="preblogs" property="*"/>
<html>
    <head>
    <meta charset="utf-8">
    <title>Blog - Vicky</title>
    <link rel="icon" type="image/png" href="img/favicon.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/style.css" rel="stylesheet" media="screen">
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/bootstrap/respond.min.js"></script>
      <script src="js/bootstrap/html5shiv.js"></script>
    <![endif]-->
    
    </head>
    <body class="page-blog">
        <div class="container" id="container">
        
            <div class="row top">
                <div class="col-lg-8 col-md-8 col-sm-7 col-left">
                    <div class="name"><a href="index.jsp">Vicky</a></div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-5 col-right">
                    <nav>
                        <ul class="list-inline" id="menu">
                            <li>
                                <a href="index.jsp">home</a>
                            </li>
                            <li class=" active">
                                <a href="blog.jsp">blog</a>
                            </li>
                            <li>
                                <a href="post.jsp">post</a>
                            </li>
                            <li class="last">
                                <a href="login.jsp">login</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="row bottom">
                <div class="col-lg-8 col-md-8 col-sm-7 col-left">
                    <div>
                        <section>
                     		<% 
								BlogsDao bd = new BlogsDao();
								preblogs=bd.getBlogs("0");
							%>
                            
                            <!--article title-->
                            <h1><%=preblogs.getTitle()%></h1>
                            <h1 class="spacer">___</h1>
                            
                            <!--article date-->
                            <p class="article-date"><%=preblogs.getPosttime()%></p>
                            
                            <!--article content-->
                            <p class="article-description"><strong><%=preblogs.getType()%></strong></p>
                            <br>
                            <p><%=preblogs.getContent()%></p>    
                            <hr>                           
                            
                        </section>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-5 col-right">
                    <div id="scroll-shadow"></div>
                    <h1 class="visible-xs section-header" id="posts-list">Last articles</h1>
                    <h1 class="visible-xs text-center spacer">___</h1>
                    
                    <section class="blog">
                    
                        <!--article-->
                        <div class="media">
                            <a class="pull-left" href="blogPresent.jsp?bid=0">
                            
                                <!--article image-->
                                <img class="media-object" src="img/blog/article-min-1.png" alt="miniature-article">
                                
                            </a>
                            <div class="media-body">         
                            	<%
                            	BlogsDao bd1 = new BlogsDao();
                            	preblogs=bd1.getBlogs("0");                          	
                            	%>
                                <!--article title-->
                                <h4 class="media-heading"><%=preblogs.getTitle()%></h4>
                                
                                <!--article category-->
                                <p class="article-category"><%=preblogs.getType()%></p>
                                
                                <!--article date-->
                                <p class="article-date"><%=preblogs.getPosttime()%></p>
                                
                            </div>
                        </div>
                        <div class="media">
                            <a class="pull-left" href="blogPresent.jsp?bid=1">
                                <img class="media-object" src="img/blog/article-min-7.png" alt="miniature-article">
                            </a>
                            <div class="media-body">
                            	<%
                            	BlogsDao bd2 = new BlogsDao();
                            	preblogs=bd2.getBlogs("1");                          	
                            	%>
                                <h4 class="media-heading"><%=preblogs.getTitle()%></h4> 
                                <p class="article-category"><%=preblogs.getType()%></p>
                                <p class="article-date"><%=preblogs.getPosttime()%></p>
                            </div>
                        </div>
                        
                    </section>
                    <a class="btn btn-block scroll-top visible-xs">
                        <img src="img/icon/icon-chevron.png" alt="Scroll top">
                    </a>
                </div>
            </div>                        
        </div>  
                
        <script src="js/jquery.js"></script>
        
        <!-- FASTCLICK -->
        <script src="js/plugins/fastclick/fastclick.js"></script>
        <!-- SMOOTH SCROLL -->
        <script src="js/plugins/smooth-scroll/jquery.smooth-scroll.min.js"></script>
        <!-- MIXITUP -->
        <script src="js/plugins/mixitup/jquery.mixitup.min.js"></script>
        
        <script src="js/main.js"></script>
    </body>
</html>