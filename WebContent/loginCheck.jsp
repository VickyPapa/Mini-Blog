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
    <!--����û�û�е�¼����ת��index.jsp -->
<%
	String username =(String) session.getAttribute("name");
	if(username == null ){
%>
	<script language="javascript" type="text/javascript">
		//alert("���ȵ�¼ϵͳ��")
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
  	alert("�Բ��𣬸��û��������ڣ�");
  	window.location.href = "login.jsp";
  </script>
  <%		
  	}else{
  %>
  <script language="javascript">
  	alert("�Բ�����������������������������ȷ�����룡");
  	window.location.href = "login.jsp";
  </script>
  <%
  	} 
  %>  
  </body>
</html>