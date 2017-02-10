<%@ page language="java" contentType="text/html; charset=gb2312"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%response.setContentType("text/html;charset=UTF-8");%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<jsp:useBean id="blogs" class="bean.Blogs" scope="session"></jsp:useBean>
<jsp:setProperty name="blogs" property="*"/>
<%@ page import="dao.BlogsDao" %>
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>Post handle</title>
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
  
  <body>
  <%
    BlogsDao bd = new BlogsDao();
    blogs.setBid(bd.getNextbid());
    out.print(bd.getNextbid());
    out.print("\n");    
    out.print(blogs.getBid());
    out.print("\n");  
    blogs.setTitle(request.getParameter("title"));
    out.print(blogs.getTitle());
    out.print("\n");  
    blogs.setType(request.getParameter("type"));
    out.print(blogs.getType());
    out.print("\n");  
    blogs.setContent(request.getParameter("content"));
    out.print(blogs.getContent());
    out.print("\n");  
    bd.addBlog(blogs);
    if(blogs.getBid() != -1 ){
    	response.sendRedirect("blogPresent.jsp?bid="+Integer.toString(blogs.getBid()));	
    }
    else{    	
    	%>
    	  <script language="javascript">
    	  	alert("发布失败");
    	  </script>
    	  <%
    }

  %> 
   
  </body>
</html>