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
   %>
   <%
    try{   
    	Admin admin =(Admin)request.getAttribute("admin");
	    String sql="select * from  admin where type= ? and aName= ? and aPwd= ? ";
	    pres = conn.prepareStatement(sql);
	    pres.setString(1, admin.getType());
	    pres.setString(2, admin.getaName());
	    pres.setString(3, admin.getaPwd());
	    rs =pres.executeQuery();     
	    if(rs.next()) { 
	    	System.out.println("恭喜你，登陆成功！！");
		    response.sendRedirect("../view/loginSuccess.jsp"); 
	    }else{
	    	System.out.println("sorry,登录失败！！");
	    	response.sendRedirect("../view/login.html");
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