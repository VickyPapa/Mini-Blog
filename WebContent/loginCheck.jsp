<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<jsp:useBean id="login" class="bean.Login" scope="session"></jsp:useBean>
<jsp:setProperty name="login" property="*"/>
<%@ page import="dao.UsersDao" %>
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>login check</title>
    <!--如果用户没有登录，则转到index.jsp -->
<%
	String username =(String) session.getAttribute("name");
	if(username == null ){
%>
	<script language="javascript" type="text/javascript">
		//alert("请先登录系统！")
		//location.href="index.jsp";
 	</script>
<%
 	}
%>
  </head>
  
  <body>
  <%
    login.setUsername(request.getParameter("name"));
    login.setPassword(request.getParameter("password"));
  	session.setAttribute("name",login.getUsername());
	//out.print(login.getUsername());
	//out.print(login.getPassword());
  	UsersDao ud = new UsersDao();
  	if(login.getPassword().equals(ud.getLoginUser(login.getUsername()))){
  		response.sendRedirect("index.jsp");
  	}else if(ud.getLoginUser(login.getUsername()) == null){
  %>
  <script language="javascript">
  	alert("对不起，该用户名不存在！");
  	window.location.href = "login.jsp";
  </script>
  <%		
  	}else{
  %>
  <script language="javascript">
  	alert("对不起，您输入的密码错误，请重新输入正确的密码！");
  	window.location.href = "login.jsp";
  </script>
  <%
  	} 
  %>  
  </body>
</html>