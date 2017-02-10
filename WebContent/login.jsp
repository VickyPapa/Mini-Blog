<%@ pagecontentType="text/html;charset=gb2312" %>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <title>Login - Vicky</title>
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
                            <li>
                                <a href="post.jsp">post</a>
                            </li>
                            <li class=" active">
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
                            <div class="row text-center">
                                <div class="col-lg-12">
                                    
                                    <!--activity image-->
                                    <img class="img-responsive" src="img/ZJUphoto.jpg" alt="Project header">

                                    <!--activity title -->
                                    <h1>
                                    <%
										String name =(String) session.getAttribute("name");
										if(name == null ){
											 out.print("Hello, visit!");
 										}else{
 											out.print("Welcome home, Vicky!");
 										}
									%>
									
									</h1>
                                
                                </div>
                            </div>   
                        </section>
                    </div>
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
                                        
                                        <div class="col-xs-12 login_title text-center">LOGIN</div>
                                        <form action="loginCheck.jsp" class="login" method="post">
            <div class="nav">
                <div class="nav login_nav">
                    <div class="col-xs-4 login_username">
                        User Name:
                    </div>
                    <div class="col-xs-6 login_usernameInput">
                        <input type="text" name="name" id="name" value="" placeholder="&nbsp;&nbsp;User Name" onblur="javascript:ok_or_errorBylogin(this)">
                    </div>
                </div>
                <div class="nav login_psdNav">
                    <div class="col-xs-4">
                        Password:
                    </div>
                    <div class="col-xs-6">
                        <input type="password" name="password" id="psd" value="" placeholder="&nbsp;&nbsp;Password" onblur="javascript:ok_or_errorBylogin(this)">
                    </div>
                </div>
                <div class="col-xs-12 login_btn_div text-center">
                    <input type="submit" class="sub_btn" value="login" id="login">
                </div>
            </div>
        </form>
        </div>
        <hr>
                                        
                                        <!--log out-->
                                        <div class="item-social text-center">
                                            <a href="logout.jsp">LOGOUT</a>
                                        </div>                                       
                                        
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