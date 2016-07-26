function checkUser(){
				var userName = document.getElementById("user").value;
				var userErrorTips = document.getElementById("userError");
				if(userName ==""){
					userErrorTips.innerHTML = "姓名不能为空!";
					userErrorTips.style.color="red";
					return false;
				}
				userErrorTips.innerHTML="";
				var pwd = document.getElementById("password").value;
				var pwdErrorTips = document.getElementById("pwdError");
				var regCode = /^\w{6,8}$/;
				if(pwd ==""){
					pwdErrorTips.innerHTML = "密码不能为空!";
					pwdErrorTips.style.color="red";
					return false;
				}
				if(regCode.test(pwd)==false){
					pwdErrorTips.innerHTML = "密码不符合标准!";
					pwdErrorTips.style.color="red";
					return false;
				}
				pwdErrorTips.innerHTML="";
				var rePwd = document.getElementById("rePassword").value;
				var rePwdErrorTips = document.getElementById("repwdError");
				if(pwd!=rePwd){
					rePwdErrorTips.innerHTML = "两次输入密码不一致!";
					rePwdErrorTips.style.color="red";
					return false;
				}
				rePwdErrorTips.innerHTML="";
				var email = document.getElementById("email").value;
				var emailErrorTips = document.getElementById("emailError");
				var regCode = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
				if(email ==""){
					emailErrorTips.innerHTML = "邮箱不能为空!";
					emailErrorTips.style.color="red";
					return false;
				}
				if(regCode.test(email)==false){
					emailErrorTips.innerHTML = "邮箱不符合标准!";
					emailErrorTips.style.color="red";
					return false;
				}
				emailErrorTips.innerHTML="";
				var cityIndex = document.getElementById("city").selectedIndex;
				var cityErrorTips = document.getElementById("cityError");
				if(cityIndex==0){
					cityErrorTips.innerHTML="请选择具体城市！";
					cityErrorTips.style.color="red";
					return false;
				}
				cityErrorTips.innerHTML="";
				document.getElementById("userName").value="";
				document.getElementById("pwd").value="";
				document.getElementById("repwd").value = "";
				document.getElementById("city").selectedIndex=0;
				document.getElementById("area").value="";
				return true;
				
			}
			