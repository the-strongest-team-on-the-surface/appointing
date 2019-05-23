<%@page contentType="text/html; charset=UTF-8" language="java" %>

<head>
    <title>登录</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script>var pageContext = "${pageContext.request.contextPath}";</script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/log-in.js"></script>
    
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
                <form class="form-horizontal">
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
                            <option value="1" selected>顾客</option>
                            <option value="2">商家</option>
                            <option value="3">理发师</option>
                        </select>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-4 offset-sm-3">
                            <button id="sign-up" onClick="location.href='${pageContext.request.contextPath}/jsp/sign-up.jsp'" type="button"
                                class="btn btn-primary btn-lg btn-block">注册</button>
                        </div>
                        <div class="col-sm-4 offset-sm-1">
                            <button id="log-in" type="button"  onclick="return login()" class="btn btn-primary btn-lg btn-block">登录</button>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</body>