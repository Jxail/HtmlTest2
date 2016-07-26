<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%> 
<%@ page import="java.sql.*"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%!
  	   Connection conn = null;  
   %>
   <%
	   String driver = "com.mysql.jdbc.Driver";     
	   String dbUrl = "jdbc:mysql://localhost:3306/test";        
	   String dbUser = "root";        
	   String dbPwd = "jx123";   
	   Class.forName(driver);      
	   conn = DriverManager.getConnection(dbUrl,dbUser,dbPwd);   
	   out.print("已连接数据库...");  
   %>
</body>
</html>