
	    jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);  
		    });
		});
	
	  function checkUser(){
	  	        var userName = document.getElementById("user").value;
				var userErrorTips = document.getElementById("userError");
				if(userName ==""){
					userErrorTips.innerHTML = "姓名不能为空!";
					userErrorTips.style.color="red";
					return false;
				}
				userErrorTips.innerHTML="";
				var pwd = document.getElementById("pwd").value;
				var pwdErrorTips = document.getElementById("pwdError");
				var regCode = /^\w{6,8}$/;
				if(pwd ==""){
					pwdErrorTips.innerHTML = "密码不能为空!";
					pwdErrorTips.style.color="red";
					return false;
				}
					if(regCode.test(pwd)==false){
					pwdErrorTips.innerHTML = "密码不规范!";
					pwdErrorTips.style.color="red";
					return false;
				}
				pwdErrorTips.innerHTML="";
	  }
	