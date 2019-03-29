<%@page contentType="text/html; charset=UTF-8" language="java"%>

<head>

    <title>注册</title>

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>var pageContext = "${pageContext.request.contextPath}";</script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/sign-up.js"></script>

</head>

<body>
    <div class="container">
        <div class="clearfix" style="margin-bottom: 120px;"></div>
        <div class="col-md-3 column"></div>
        <div class="col-md-6 column">

            <div class="row col-md-offset-8">
                <a href='${pageContext.request.contextPath}/jsp/baber-sign-up.jsp' role="button">商家注册，请点击跳转</a>
            </div>
            <div class="row col-md-offset-8">
                <a href='${pageContext.request.contextPath}/jsp/log-in.jsp' role="button">如果已有账号，请直接登录</a>
            </div>
            <div class="clearfix" style="margin-bottom: 10px;"></div>
            <form class="form-horizontal" onsubmit="return fnSignup()">

                <div class="form-group row has-feedback" id="dtelnum">
                    <label for="telnum" class="col-sm-3 ">手机号码</label>
                    <div class="col-sm-9">
                        <input onchange="fretel()" type="text" class="form-control" id="telnum" placeholder="">
                        <span id="stelnum"></span>
                        <small id="telnumHelp" class=" form-text text-muted"> 请输入11位手机号码
                        </small>
                    </div>
                </div>

                <div class="form-group row has-feedback" id="dpassword1">
                    <label for="password1" class=" col-sm-3">密码</label>
                    <div class="col-sm-9">
                        <input onchange="frepassword1()" type="password" class="form-control" id="password1"
                            placeholder=""><span id="spassword1"></span> <small id="passwordHelp1"
                            class=" form-text text-muted">
                            请输入大写字母、小写字母、数字组成的组合，至少8位，至多16位 </small>
                    </div>
                </div>

                <div class="form-group row has-feedback" id="dpassword2">
                    <label for="password2" class=" col-sm-3"></label>
                    <div class="col-sm-9">
                        <input onchange="frepassword2()" type="password" class="form-control" id="password2"
                            placeholder=""><span id="spassword2"></span> <small id="passwordHelp2"
                            class=" form-text text-muted"> 请输入再次确认密码
                        </small>
                    </div>
                </div>

                <div class="form-group row has-feedback" id="dname">
                    <label for="name" class=" col-sm-3">姓名</label>
                    <div class="col-sm-9">
                        <input type="text" onchange="frename()" class="form-control" id="name" placeholder=""><span
                            id="sname"></span>
                        <small id="nameHelp" class=" form-text text-muted">
                            请输入您的姓名或昵称 最多20位 </small>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="sex" class="col-sm-3">性别</label>
                    <div class="col-sm-9">
                        <select id="sex" class="form-control">
                            <option value="true" selected>先生</option>
                            <option value="false">女士</option>
                        </select> <small id="sexHelp" class="form-text text-muted">
                            请告诉我们如何称呼您 </small>
                    </div>
                </div>

                <div class="col-sm-offset-3 col-sm-9 row">
                    <button type="submit" id="signupcheck" class="btn btn-primary btn-lg btn-block">注册</button>
                </div>

            </form>
        </div>
    </div>
</body>

</html>