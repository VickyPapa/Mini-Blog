<%@ page language="java" contentType="text/html; charset=GBK" %>
<%request.setCharacterEncoding("GBK");%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>loginout</title>	
  </head>
  
  <body>
  <%
  session.invalidate();
  response.sendRedirect("index.jsp");
  %>    
  </body>
</html>
