<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
	    request.setCharacterEncoding("UTF-8");
	    String role = request.getParameter("role").trim();   //忽略空格
	    String name = request.getParameter("user").trim();
	    String pwd = request.getParameter("pwd").trim();
	    
	    String[] remember = request.getParameterValues("remember"); 
	    if(remember[0].equals("remember")){
	    	session.setAttribute("role",role);  //登录信息存入session
		    session.setAttribute("name",name);  //值不加双引号
		    session.setAttribute("pwd",pwd);
		    session.setMaxInactiveInterval(60);  //设置停止操作后session的有效时间
	    } 
	    Admin admin = new Admin();   //对象的封装
	    admin.setaName(name);
	    admin.setType(role);
	    admin.setaPwd(pwd);
	    request.setAttribute("admin", admin);
	    
	    RequestDispatcher rd = request.getRequestDispatcher("../dao/loginDao.jsp");
        rd.forward(request,response);
   %>
</body>
</html>