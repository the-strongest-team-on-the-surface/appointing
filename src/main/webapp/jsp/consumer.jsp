<%@page contentType="text/html; charset=UTF-8" language="java" %>

<html>

<head>
    <meta charset="utf-8">
    <title>登录</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/awesome-bootstrap-checkbox.css" /> -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script> var pageContext = "${pageContext.request.contextPath}";</script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/consumer.js"></script>
    <style>
        .header {

            width: 900px;
            height: 110px;
            margin: 5px auto;
        }

        .header img {
            height: 100px;
            float: left;
        }

        .header p {

            display: block;
            width: auto;
            line-height: 20px;
            background: url("sethome.png") no-repeat left center;
            padding-left: 20px;
        }

        .header pa {
            text-align: left;
            text-decoration: underline;
            font-size: 50px;
        }

        .header butten {}
    </style>
</head>

<body>
    <div class="clearfix" style="margin-bottom: 100px;"></div>
    <div class="container">
        <div class="row clearfix">


            <div class="col-sm-2 column">\
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">个人资料</h3>
                    </div>
                    <div class="panel-body" id="consumerinfo">
                        
                    </div>
                </div>

            </div>
            <div class="col-sm-10 column ">
                <div class="col-sm-12 column well well-sm">
                    <ul id="myTab" class="nav nav-tabs">
                        <li class="active"><a href="#storeaddress" data-toggle="tab">选择商店</a></li>
                        <li><a href="#baber" data-toggle="tab">理发预约</a></li>
                        <li><a href="#myappoint" data-toggle="tab">我的预约</a></li>
                        <!-- <li><a href="#changeinfo" data-toggle="tab">修改信息</a></li> -->
                    </ul>
                </div>

                <div id="myTabContent" class="tab-content ">

                    <div class="tab-pane fade in active " id="storeaddress">

                        <div class="clearfix" style="margin-bottom: 10px;"></div>


                        <form role="form" id="form1" onsubmit="return searchstore()">
                            <div class="form-group col-sm-2">
                                <select onChange="eChange(2,$('#addr1').val())" id="addr1"
                                    class="form-control"></select>
                            </div>
                            <div class="form-group col-sm-2">
                                <select onChange="eChange(3,$('#addr2').val())" id="addr2"
                                    class="form-control"></select>
                            </div>
                            <div class="form-group col-sm-2">
                                <select onChange="eChange(4,$('#addr3').val())" id="addr3"
                                    class="form-control"></select>
                            </div>
                            <div class="form-group col-sm-2">
                                <select class="form-control" id="addr4"></select>
                            </div>
                            <div class="form-group col-sm-2">
                                <button class="btn btn-primary btn-sm btn-block" id="searchbutton">查找</button>
                            </div>
                        </form>
                        <div class="clearfix" style="margin-bottom: 10px;"></div>
                        <div class="jumbotron well">


                            <!-- //显示店家 -->
                            <div style="position:relative;left:0px;top:0px;width:900px;height:320px" id="stores">

                            </div>


                            <div class="col-md-5" id="showdown">
                                <div class="clearfix" style="margin-bottom: 30px;"></div>
                                <div id="showdown1">
                                </div>

                            </div>
                            <div class="col-sm-6 col-md-offset-1" id="showdown2">
                            </div>

                        </div>

                    </div>


                    <div class="tab-pane fade" id="baber">
                        <div class="clearfix" style="margin-bottom: 10px;"></div>

                        <!-- //显示理发师 -->
                        <div class="panel-group" id="accordion">

                        </div>

                    </div>

                    <div class="tab-pane fade" id="myappoint">

                        <table class="table table-hover table-striped">
                            <thead>
                                <tr>
                                    <th>
                                        时间
                                    </th>
                                    <th>
                                        店铺
                                    </th>
                                    <th>
                                        理发师
                                    </th>
                                    <th>
                                        项目
                                    </th>
                                    <th>
                                        价格
                                    </th>
                                    <th>
                                        状态
                                    </th>
                                </tr>
                            </thead>
                            <tbody id="appointtable">
                                
                            </tbody>
                        </table>
                    </div>

                    <!-- <div class="tab-pane fade" id="changeinfo">
                        <div class="clearfix" style="margin-bottom: 30px;"></div>
                        <div class="col-sm-6 column col-sm-offset-3">
                            <form class="form-horizontal" onsubmit="">
                                <div class="col-sm-12 column">

                                    <div class="clearfix" style="margin-bottom: 20px;"></div>


                                    <div class="form-group row">
                                        <label for="password1" class="col-sm-3">密码</label>
                                        <div class="col-sm-9">
                                            <input type="password" class="form-control" id="password1" placeholder="">
                                            <small id="passwordHelp1" class="form-text text-muted">
                                                请输入大写字母、小写字母、数字组成的组合，至少8位，至多16位 </small>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="password2" class="col-sm-3"></label>
                                        <div class="col-sm-9">
                                            <input type="password" class="form-control" id="password2" placeholder="">
                                            <small id="passwordHelp2" class="form-text text-muted"> 请输入再次确认密码 </small>
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
                                        <label for="sex" class="col-sm-3">性别</label>
                                        <div class="col-sm-9">
                                            <select id="sex" class="form-control">
                                                <option value="true" selected>先生</option>
                                                <option value="false">女士</option>
                                            </select> <small id="sexHelp" class="form-text text-muted">
                                                请告诉我们如何称呼您 </small>
                                        </div>
                                    </div>

                                    <div class="col-sm-8 offset-sm-2">
                                        <button type="submit" id="signupcheck"
                                            class="btn btn-primary btn-lg btn-block">修改</button>
                                    </div>

                                </div>

                            </form>
                        </div>

                    </div> -->


                </div>



            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">预约理发</h4>
                </div>
                <div class="modal-body" id="modalbody">
                    <div class="container ">
                        <div class="row clearfix col-sm-12">
                            <div class="col-sm-1"></div>
                            <div class="from-group col-sm-10" >
                                <h3>预约信息：</h3>
                                <div id="inmodalbody">

                                </div>
                                <div class=" col-sm-3 col-md-offset-1">
                                    <select class="form-control" id="times">
                                        <option value='-1'> 请选择预约时间 </option>
                                    </select>
                                </div>

                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">退出</button>
                    <button type="button" class="btn btn-primary" onclick="confirm()">保存预约</button>
                </div>
            </div>
        </div>
    </div>

</body>

</html>