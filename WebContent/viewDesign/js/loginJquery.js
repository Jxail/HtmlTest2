 $(function(){
   	  	$("#login").click(function(){
	  
	        var userName = $("#user").val();
	   	    if(userName==""){
	   	    	$("#userError").html("姓名不能为空").css("color","red");
	   	    }
	   	    else{
	   	   		$("#userError").html("");
		   	    var pwd = $("#pwd").val();
		   	    if(pwd==""){
		   	    	$("#pwdError").html("密码不能为空").css("color","red");
		   	    }
		   	    else{
		   	    	$("#pwdError").html("");
		   	    	var type = $("#selected").find("option:selected").text();  //获取用户选择的角色名
	   	            alert("恭喜你，登陆成功，你的角色是："+type);
		   	    } 
	   	     }
	   	    
	   	   
   	  	});
   	  });