<%@ page language="java" import="java.util.*,yanshuo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'validate.jsp' starting page</title>
    
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
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="userLogin" class="yanshuo.UserLoginBean" scope="request"/>
<jsp:setProperty property="*" name="userLogin"/>
<jsp:useBean id="userManager" class="yanshuo.UserManagerBean" scope="application"/>
<%UserBean userBean=userManager.Login(userLogin.getUsername(),userLogin.getPassword()); 
    if(userBean!=null){
    session.setAttribute("user", userBean);
    response.sendRedirect("main.jsp");
    }else{
      response.sendRedirect("error.html");
    }
%>

  </body>
</html>
