function login() {

    var tel = $('#telNum').val();
    var pwd = $('#password').val();
    var utp = $('#userType').val();

    if (tel == "" || pwd == "") { alert("请填写手机号与密码!"); return false; }

    var param = {};
    param.telNum = tel;
    param.password = pwd;
    param.userType = utp;
    $.ajax({
        type: 'POST',
        data: param,
        url: pageContext + '/wtf/pwdverify',
        async: false,
        success: function (data) {
            if (data == 1) {
            	setCookie(utp,tel,7);
            	alert("登录成功");
            	if(utp=="1")
            		location.href=pageContext+"/jsp/consumer.jsp";
            	else if(utp=="2")
            		location.href=pageContext+"/jsp/store.jsp";
            	else if(utp=="3")
            		location.href="index1.html";
            }
            else {
            	clearCookie(utp);
                alert("用户名或密码或用户类型错误！");
            }
        },
        error: function (e) {
            alert("system error");
        }
    })
    return false;
}

function setCookie(cname,cvalue,exdays){
    var d = new Date();
    d.setTime(d.getTime()+(exdays*24*60*60*1000));
    var expires = "expires="+d.toGMTString();
    document.cookie = cname+"="+cvalue+"; "+expires;
}
function getCookie(cname){
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i].trim();
        if (c.indexOf(name)==0) { return c.substring(name.length,c.length); }
    }
    return "";
}
/*
function checkCookie(){
    var user=getCookie("cname");
    if (user!=""){
        return true;
    }
    else {
    	return false;
    }
}
*/
function clearCookie(name) {  
    setCookie(name, "", -1);  
}