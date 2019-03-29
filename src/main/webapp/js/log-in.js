function login() {


    var tel = $('#telNum').val();
    var pwd = $('#password').val();

    if (tel == "" || pwd == "") { alert("请填写手机号与密码!"); return false; }

    var param = {};
    param.telNum = tel;
    param.password = pwd;
    $.ajax({
        type: 'POST',
        data: JSON.stringify(param),
        contentType: 'application/json',
        dataType: 'json',
        url: pageContext + '/wtf/pwdverify',
        async: false,
        success: function (data) {
            if (data == 1)
                alert("登录成功");
            else
                alert("用户名或密码错误！")
        },
        error: function (e) {
            alert("system error");
        }
    })
    return false;
}