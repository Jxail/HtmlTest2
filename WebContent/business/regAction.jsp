<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
 	request.setCharacterEncoding("UTF-8");
    String name = new String(request.getParameter("user").getBytes("ISO-8859-1"),"UTF-8");
    String sex = new String(request.getParameter("Radio").getBytes("ISO-8859-1"),"UTF-8");
    String role = new String(request.getParameter("role").getBytes("ISO-8859-1"),"UTF-8");
    String pwd = new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
    String email = new String(request.getParameter("email").getBytes("ISO-8859-1"),"UTF-8");
    String city = new String(request.getParameter("city").getBytes("ISO-8859-1"),"UTF-8");
    String area = new String(request.getParameter("area").getBytes("ISO-8859-1"),"UTF-8");
    
    System.out.println(name);
	System.out.println(sex);
	System.out.println(role);
	System.out.println(pwd);
	System.out.println(email);
	System.out.println(city);
	System.out.println(area);
	
    Student stu = new Student();
    Teacher teach = new Teacher();
    
    if("student".equals(role)){
    	stu.setStuName(name);
    	stu.setStuSex(sex);
    	stu.setType(role);
    	stu.setStuPwd(pwd);
    	stu.setStuEmail(email);
    	stu.setStuCity(city);
    	stu.setStuArea(area);
  
    }
    else if("teacher".equals(role)){
    	teach.setTeachName(name);
    	teach.setTeachSex(sex);
    	teach.setType(role);
    	teach.setTeachPwd(role);
    	teach.setTeachEmail(email);
    	teach.setTeachCity(city);
    	teach.setTeachArea(area);
    }
    request.setAttribute("stu", stu);
    request.setAttribute("teach", teach);
    RequestDispatcher rd = request.getRequestDispatcher("../dao/regDao.jsp");
    rd.forward(request,response);
    
 %>
</body>
</html>