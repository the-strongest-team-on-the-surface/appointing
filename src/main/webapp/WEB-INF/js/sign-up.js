function fnSignup() {

    name = document.getElementById("name").value;
    telnum = document.getElementById("telnum").value;
    password1 = document.getElementById("password1").value;
    password2 = document.getElementById("password2").value;
    sex = document.getElementById("sex").value;

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



    return false;
}