<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%response.setContentType("text/html;charset=UTF-8");%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <title>Post - Vicky</title>
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
    
        <!--如果用户没有登录，则转到index.jsp -->
	<%
		String name =(String) session.getAttribute("name");
		if(name == null ){
	%>
		<script language="javascript" type="text/javascript">
		alert("抱歉，访客无权发表博文！")
		location.href="index.jsp";
 		</script>
	<%
 		}
	%>
    
    </head>
    <body class="page-contact">
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
                            <li>
                                <a href="blog.jsp">blog</a>
                            </li>
                            <li class=" active">
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
                    <section>
                        <div class="row">
                            <div class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2">
                                
                                <!--input contact-->
                                <h1>Post</h1>
                                <h1 class="spacer">___</h1>
                                <p>Write blogs here as long as you like.</p>
                                <hr>
                                <div class="panel panel-default contact btn-footer">
                                    <div class="panel-body">
                                        <form action="postHandle.jsp" role="form" class="blog" method="post">
                                            <div class="form-group">
                                                <label for="postTitle">title</label>
                                                <input type="title" name="title" class="form-control" id="postTitle">
                                            </div>
                                            <div class="form-group">
                                                <label for="postType">type</label>
                                                <input type="type" name="type" class="form-control" id="postType">
                                            </div>
                                            <div class="form-group">
                                                <label for="postMessage">content</label>
                                                <textarea type="content" name="content" class="form-control" rows="10" id="postContent"></textarea>
                                            </div>
                                            <div class="panel-footer">
                                        		<input type="submit" class="btn btn-grey btn-lg btn-block" value="Post" id="post">
                                    		</div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>    
                    </section>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-5 col-right">
                <div id="scroll-shadow"></div>
                    <section>
                        <div class="row">
                            <div class="col-lg-12">
                            
                                <!--panel contact-->
                                <div class="panel panel-default item">
                                    <div class="panel-heading">
                                        <a href="#">
                                            
                                            <!--your image-->    
                                            <img class="img-responsive item-img" src="img/contact/avatar-contact.jpg" alt="Avatar">
                                            
                                        </a>
                                    </div>
                                    <div class="panel-body">
                                    
                                        <!--your name-->
                                        <a href="#"><h4 class="item-title">Vicky</h4></a>
                                        
                                        <!--your profession / where you live-->
                                        <p class="item-category">A stupid student in SE, in ZJU</p>
                                        
                                        <!--your descritpion / why should we contact you-->
                                        <p class="item-description">Living for eating. Dying for coding.</p>
                                        <hr>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>    
                    </section>
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