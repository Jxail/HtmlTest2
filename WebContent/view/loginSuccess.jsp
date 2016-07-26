<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
	 request.setCharacterEncoding("UTF-8");
	 String role = (String)session.getAttribute("role");
	 String name = (String)session.getAttribute("name");
	 String pwd = (String)session.getAttribute("pwd");
	 if(name==null||!name.equals("Jxial")){
		 response.sendRedirect("login.html"); //当超过session的时间name值为null,需要重新登陆
	 }
 %>
 <%=name %>,恭喜你，登录成功！！
     您的登录信息如下：<br/>
	    角色：<%=role%><br/>
	    姓名：<%=name %><br/>
	    密码： <%=pwd %><br/> 
</body>
</html>