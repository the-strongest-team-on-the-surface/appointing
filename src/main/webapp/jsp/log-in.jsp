<%@page contentType="text/html; charset=UTF-8" language="java" %>

<head>
    <title>登录</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <script>
        function login() {


            var tel = $('#telNum').val();
            var pwd = $('#password').val();
            var param={};
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
                        <input type="text" class="form-control col-sm-9" id="telNum" />
                    </div>
                    <div class="form-group row">
                        <label for="password" class="col-sm-3">
                            密码：
                        </label>
                        <input type="password" class="form-control col-sm-9 " id="password" />
                    </div>
                    <div class="form-group col-sm-3 offset-sm-3">
                        <select id="userType" class="form-control">
                            <option value="consumer" selected>顾客</option>
                            <option value="store">商家</option>
                            <option value="baber">理发师</option>
                        </select>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4 offset-sm-3">
                            <button id="sign-up" onClick="window.open('sign-up.html')" type="button"
                                class="btn btn-primary btn-lg btn-block">注册</button>
                        </div>
                        <div class="col-sm-4 offset-sm-1">
                            <button id="log-in" type="submit" class="btn btn-primary btn-lg btn-block">登录</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</body>