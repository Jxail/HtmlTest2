<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%> 
<%@ page import="entity.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%@ include file="../util/connJdbc.jsp" %>   //静态包含将加载驱动的公共代码包含进来
  <%!     
	    PreparedStatement pres = null;      
	    ResultSet rs = null;
	    String sql = null;
   %>
   <%
    try{   
    	Student stu =(Student) request.getAttribute("stu");
    	Teacher teach =(Teacher) request.getAttribute("teach");
    	if("teacher".equals(teach.getType())){
	    	 sql = "insert into teacher(teachName,teachPwd,teachSex,teachEmail,teachCity,teachArea,type) values(?,?,?,?,?,?,?)";
	    	 pres = conn.prepareStatement(sql);
	 	     pres.setString(1, teach.getTeachName());
	 	     pres.setString(2, teach.getTeachPwd());
	 	     pres.setString(3, teach.getTeachSex());
	 	     pres.setString(4, teach.getTeachEmail());
	 	     pres.setString(5, teach.getTeachCity());
	 	     pres.setString(6, teach.getTeachArea());
	 	     pres.setString(7, teach.getType());
	 	    
    	}else if("student".equals(stu.getType())){
    		 sql = "insert into Student(stuName,stuPwd,stuSex,stuEmail,stuCity,stuArea,type) values(?,?,?,?,?,?,?)";
    		 pres = conn.prepareStatement(sql);
    		 pres.setString(1, stu.getStuName());
    		 pres.setString(2, stu.getStuPwd());
    		 pres.setString(3, stu.getStuSex());
    		 pres.setString(4, stu.getStuEmail());
    		 pres.setString(5, stu.getStuCity());
    		 pres.setString(6, stu.getStuArea());
    		 pres.setString(7, stu.getType());
    	}	    	
	    int row = pres.executeUpdate();     
	    if(row!=0) { 
	    	System.out.println("恭喜你，注册成功！！");
		    response.sendRedirect("../view/regSuccess.jsp"); 
	    }else{
	    	System.out.println("sorry,登录失败！！");
	    	response.sendRedirect("../view/register.html");
	    }
	    }catch(SQLException e) {  
	    	e.printStackTrace();
	    }finally{
	    	if(null!=pres){
	    		pres.close();
	    	}
	    	if(null!=conn){
	    		conn.close();
	    	}
	    } 
	%>
</body>
</html>