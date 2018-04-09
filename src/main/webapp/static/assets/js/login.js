function generateMsg(msg){
	generateAlertContainer(msg,"am-alert am-alert-danger alertContainer");
}

function checkLoginParam(){
	return checkUsername() && checkPasswd();
}

function checkUsername(){
	var username_value = $("#username").val();
	if(username_value.length == 0 || username_value.replace(/^\s+|\s+$/g,"") == ""){
		$("#username").css("border-color","#AE0000");
		generateMsg("用户名不能为空");
		$("#username").val("");
		return false;
	}else{
		$("#username").css("border-color","#ccc");
	}
	return true;
}

function checkPasswd(){
	var password_value = $("#password").val();
	
	if(password_value.length ==0){
		$("#password").css("border-color","#AE0000");
		generateMsg("密码不能为空");
		return false;
	}
	else{
		$("#password").css("border-color","#ccc");
	}
	return true;
}

$(function(){
	$("#username").blur(function(){
		checkUsername();
	});
	
	$("#password").blur(function(){
		checkPasswd();
	});
	
});
