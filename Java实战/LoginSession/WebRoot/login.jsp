<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%  String username="";
      Cookie[] cookies=request.getCookies();
      if(cookies!=null){
           for(int i=0;i<cookies.length;i++){
              if(cookies[i].getName().equals("username")){
                 username=cookies[i].getValue();
                 break;
                 }
               }
             }
   %>
  <form action="servlet/LoginServlet" method="post">
    用户名：<input type="text" name="username" value="<%=username %>"/> <br>
    密码：<input type="password" name="password"/><br>
 记住用户名:<input type="checkbox" name="saveUsername" value="yes"/><br>
    <input type="submit" value="登录"/>
    </form>
  </body>
</html>
