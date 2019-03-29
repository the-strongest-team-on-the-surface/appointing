<%@page contentType="text/html; charset=UTF-8" language="java" %>

<head>
    <title>登录</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style>            span{
                border-radius:90px;
                background-color:transparent;
                }
    </style>
    <script>
    function check(){
 	   var x=document.getElementById("telNum").value
 	   if(x==""){
 		   telNum.style.borderColor = "whitesmoke";
 		   ino.style.backgroundColor = "white";
 	       ino.innerHTML = "";
 	   }else if(!/^1[34578]\d{9}$/.test(x)){ 
 	        telNum.style.borderColor = "red";
 	        ino.style.backgroundColor = "red";
 	        ino.innerHTML = "×";
    }else{
     telNum.style.borderColor = "green";
     ino.style.backgroundColor = "green";
     ino.innerHTML = "√";
    }
    }
    
    function check1(){
 	   var x=document.getElementById("password").value
 	   if(x==""){
 		   password.style.borderColor = "whitesmoke";
 		   ino1.style.backgroundColor = "white";
 	       ino1.innerHTML = "";
 	   }else if(x.length<8||x.length>16){ 
 	        password.style.borderColor = "red";
 	        ino1.style.backgroundColor = "red";
 	        ino1.innerHTML = "×";
    }else{
     password.style.borderColor = "green";
     ino1.style.backgroundColor = "green";
     ino1.innerHTML = "√";
    }
    }
        function login() {


            var tel = $('#telNum').val();
            var pwd = $('#password').val();
            var param={};
            if (/^1[34578]\d{9}$/.test(tel)&&pwd.length>7&&pwd.length<17) {
            } else if(!tel||!pwd){
            	alert("登录不能为空");
            	return false;
            }else{
                alert("填写格式错误");
                return false;
            }
            param.telNum=tel;
            param.password=pwd;
            $.ajax({
                type: 'POST',
                data: JSON.stringify(param),
                contentType: 'application/json',
                dataType: 'json',
                url: 'wtf/pwdverify',
                async: false,
                success: function (data) {
                    if(data==1)
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

    </script>
</head>

<body>
    <div class="clearfix" style="margin-bottom: 100px;"></div>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-3 column">
            </div>
            <div class="col-md-6 column">
                <h1 style="font-family:fantasy" class="text-center">
                    欢迎登录理发预约系统！
                </h1>
                <div class="clearfix" style="margin-bottom: 120px;"></div>
                <form class="form-horizontal" onsubmit="return login()">
                
                    <div class="form-group row">
                        <label for="telNUm" class="col-sm-3">
                            手机号：
                        </label>
                        <input type="text" class="form-control col-sm-7" id="telNum" onblur=check()>
                         <div class="col-sm-1">
                        
                        <div class="clearfix" style="margin-bottom: 6px;"></div>
                        <span id="ino"></span>
                    </div>
                    </div>
                    
                    <div class="form-group row">
                        <label for="password" class="col-sm-3">
                            密码：
                        </label>
                        <input type="password" class="form-control col-sm-7 " id="password" onblur=check1() >
                        <div class="col-sm-1">
                        
                        <div class="clearfix" style="margin-bottom: 6px;"></div>
                        <span id="ino1"></span>
                    </div>
                    </div>
                    
                    <div class="form-group col-sm-4 offset-sm-2">
                        <select id="userType" class="form-control">
                            <option value="consumer" selected>顾客</option>
                            <option value="store">商家</option>
                            <option value="baber">理发师</option>
                        </select>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-3 offset-sm-2">
                            <button id="sign-up" onClick="window.open('sign-up.html')" type="button"
                                class="btn btn-primary btn-lg btn-block">注册</button>
                        </div>
                        <div class="col-sm-3 offset-sm-1">
                            <button id="log-in" type="submit" class="btn btn-primary btn-lg btn-block">登录</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</body>