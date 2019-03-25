function fnSignup() {

	var name = $('#name').val();
	var password1 = $('#password1').val();
	var telnum = $('#telnum').val();
	var password2 = $('#password2').val();
	var sex = $('#sex').val();

	var retel = /^1[34578]\d{9}$/;
	if (retel.test(telnum)) {
	} else {
		alert("请输入正确的手机号！");
		return false;
	}

	var repwd = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9]{8,16}$/;
	if (repwd.test(password1)) {
	} else {
		alert("请输入正确的密码！");
		return false;
	}

	if (password1 == password2) {
	} else {
		alert("请两次输入一致的密码！");
		return false;
	}

	var rename = /^.{1,20}$/;
	if (rename.test(name)) {
	} else {
		alert("请输入最多20位的姓名或昵称！");
		return false;
	}

	var param = {};
	param.telNum = telum;
	param.password = password1;
	param.name = name;
	param.sex = sex;

	$.ajax({
		type : 'POST',
		data : JSON.stringify(param),
		contentType : 'application/json',
		dataType : 'json',
		url : 'wtf/consignup',
		async : false,
		success : function(data) {
			if (data > 0)
				alert("注册成功");
			else
				alert("注册失败！")
		},
		error : function(e) {
			alert("system error");
		}
	})

	return false;
}