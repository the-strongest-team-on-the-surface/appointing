<%@page contentType="text/html; charset=UTF-8" language="java" %>
<html>

<head>
    <title>Insert title here</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script>var pageContext = "${pageContext.request.contextPath}";</script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/store-sign-up.js"></script>

</head>

<body>
    <div class="container">
        <div class="clearfix" style="margin-bottom: 120px;"></div>
        <div class="col-md-3 column"></div>
        <div class="col-md-6 column">

            <div class="row col-md-offset-8">
                <a href='${pageContext.request.contextPath}/jsp/sign-up.jsp' role="button">跳到注册</a>
            </div>
            <div class="row col-md-offset-8">
                <a href='${pageContext.request.contextPath}/jsp/log-in.jsp' role="button">如果已有账号，请直接登录</a>
            </div>
            <div class="clearfix" style="margin-bottom: 10px;"></div>
            <form onsubmit="return onsm()">



                <div class="form-group row">
                    <label for="telnum" class="col-sm-3">手机号码</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="telnum" placeholder=""> <small id="telnumHelp"
                            class="form-text text-muted"> 请输入11位手机号码 </small>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="password1" class="col-sm-3">密码</label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" id="password1" placeholder=""> <small
                            id="passwordHelp1" class="form-text text-muted">
                            请输入大写字母、小写字母、数字组成的组合，至少8位，至多16位 </small>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="password2" class="col-sm-3"></label>
                    <div class="col-sm-9">
                        <input type="password" class="form-control" id="password2" placeholder=""> <small
                            id="passwordHelp2" class="form-text text-muted"> 请输入再次确认密码 </small>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="name" class="col-sm-3">姓名</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" id="name" placeholder="">
                        <small id="nameHelp" class="form-text text-muted">
                            请输入您的姓名或昵称 最多20位 </small>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="daddr" class="col-sm-3">详细地址</label>
                    <div class="col-sm-9">
                        <textarea class="form-control" id="daddr" rows="3" maxlength="100"></textarea>
                        <small id="daddrHelp" class="form-text text-muted">
                            请输入店铺的详细地址 </small>
                    </div>
                </div>

                <div class="form-group row">
                    <label for="addr1" class="col-sm-3">地址</label>
                    <div class="col-sm-9">
                        <select onChange="eChange(2,$('#addr1').val())" id="addr1" class="form-control"></select>
                        <div class="clearfix" style="margin-bottom: 10px;"></div>
                        <select onChange="eChange(3,$('#addr2').val())" id="addr2" class="form-control"></select>
                        <div class="clearfix" style="margin-bottom: 10px;"></div>
                        <select onChange="eChange(4,$('#addr3').val())" id="addr3" class="form-control"></select>
                        <div class="clearfix" style="margin-bottom: 10px;"></div>
                        <select id="addr4" class="form-control"></select>
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