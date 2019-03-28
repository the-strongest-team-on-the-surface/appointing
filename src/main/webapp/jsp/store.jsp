<%@page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <!-- <style type="text/css">
        body {
            background-image: url('https://bing.ioliu.cn/v1');
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;
            background-position: center;

        }
    </style> -->

    <meta charset="utf-8">
    <title>登录</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script>
        $(function () {

            tgpl(1);
            tsinfo(1);

        });

        function tgpl(pn) {

            $("#home").empty();
            $("#home3").empty();
            $.get("${pageContext.request.contextPath}/wtf/blist?pn=" + pn, function (pageinfo) {
                ttable(pageinfo, pn);
            });

        }

        function ttable(pageinfo, pn) {

            var blist = pageinfo.list;

            var tnav = $("<nav aria-label='Page navigation'></nav>");
            var tui = $("<ul class='pagination' id='home_nav'></ul>");



            $.each(blist, function (index, item) {

                if (index % 2 == 0) {
                    $("<div class='clearfix' style='margin-bottom: 10px;'></div>").appendTo('#home');
                }

                var tdiv1 = $("<div></div>").addClass("col-md-6 column");
                var tdiv2 = $("<div></div>").addClass("col-md-3 column");
                var tdiv3 = $("<div></div>").addClass("col-md-9 column");

                var th3 = $("<p></p>").addClass("text-left").text(item.name + item.baberId);
                var tsmall = $("<small></small>").text("手机 ： " + item.telNum);
                var timg = $("<img alt='50x50' src=''></img>");
                tdiv1.append(tdiv2.append(timg)).append((tdiv3.append(th3)).append(tsmall)).appendTo("#home");

            });

            var obj = document.getElementById("p");
            obj.innerText = "当前第 " + pn + " 页， 共 " + pageinfo.pages + " 页， 共 " + pageinfo.total + " 条数据";

            tnav.append(tui).appendTo("#home3");

            var tpn = pageinfo.pages - pageinfo.pageNum;

            var tin;
            if (pn == 1) tin = 0; else if (pn == 2) tin = -1; else tin = -2;

            var tli = $("<li></li>");

            var tlif = $("<li></li>").append($("<a onclick='tgpl(1)'></a>").text("First")).appendTo("#home_nav");

            if (pageinfo.hasPreviousPage) {
                var tlip = $("<li></li>").append($("<a onclick='tgpl(" + (pn - 1) + ")' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a>")).appendTo("#home_nav");
            }
            for (var index = tin; index <= (tpn < 2 ? tpn : 2); index++) {

                tli.append($("<a onclick='tgpl(" + (pn + index) + ")'></a>").text(pn + index)).appendTo("#home_nav");

            }
            if (pageinfo.hasNextPage) {
                var tlin = $("<li></li>").append($("<a onclick='tgpl(" + (pn + 1) + ")' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a>")).appendTo("#home_nav");
            }

            var tlil = $("<li></li>").append($("<a onclick='tgpl(" + pageinfo.pages + ")'></a>").text("last")).appendTo("#home_nav");

        }

        function tsinfo(storeId) {

            var param = {};
            param.storeId = storeId;
            $.ajax({
                type: 'POST',
                data: JSON.stringify(param),
                contentType: 'application/json',
                dataType: 'json',
                url: '${pageContext.request.contextPath}/wtf/sinfo',
                async: false,
                success: function (data) {
                    var obj = document.getElementById("sinfoh3");
                    obj.innerText = data.name;
                    var obj = document.getElementById("sinfop1");
                    obj.innerText = data.code + "\n" + data.detailedAddress;
                },
                error: function (e) {
                    alert("system error");
                }
            })
        }

        function tclick(i) {
            alert("test" + i);
        }
    </script>

</head>

<body>
    <div class="clearfix" style="margin-bottom: 100px;"></div>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-2 column">

                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">个人资料</h3>
                    </div>
                    <div class="panel-body">
                        <img alt="140x140" src="" class="img-circle" />
                        <h3 id="sinfoh3"></h3>
                        <p id="sinfop1"></p>
                        <button class="btn btn-danger" id="addbaber" data-toggle="modal"
                            data-target="#myModal">添加理发师</button>
                    </div>
                </div>

            </div>

            <div class="col-md-10 column ">
                <div class="col-md-12 column well well-sm">
                    <ul id="myTab" class="nav nav-tabs nav-justified">
                        <li class="active"><a href="#home1" data-toggle="tab">预约</a></li>
                        <li><a href="#ios" data-toggle="tab">我的预约</a></li>
                        <li><a href="#ch" data-toggle="tab">修改信息</a></li>
                    </ul>
                </div>
                <div id="myTabContent" class="tab-content ">

                    <div class="tab-pane fade in active " id="home1">

                        <div class='clearfix' style='margin-bottom: 30px;'></div>
                        <div style="position:relative;left:20px;top:0px;width:900px;height:300px" id="home"></div>
                        <div class="col-md-4" id="home4">
                            <div class='clearfix' style='margin-bottom: 30px;'></div>
                            <p id="p"></p>
                        </div>
                        <div class="col-md-6 col-md-offset-2" id="home3"></div>

                    </div>

                    <div class="tab-pane fade" id="ios">
                    </div>

                    <div class="tab-pane fade" id="ch">
                    </div>

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
                    <h4 class="modal-title" id="myModalLabel">添加理发师</h4>
                </div>
                <div class="modal-body">

                    <div class='clearfix' style='margin-bottom: 20px;'></div>

                    <div class="col-sm-2"></div>
                    <div class="col-sm-8">
                        <form class="form-horizontal" onsubmit="">

                            <div class="form-group has-success has-feedback">
                                <label for="telnum" class="col-sm-3">手机号码</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="telnum" placeholder=""
                                        aria-describedby="inputSuccess2Status">
                                    <span class="glyphicon glyphicon-ok form-control-feedback"
                                        aria-hidden="true"></span>
                                    <span id="inputSuccess2Status" class="sr-only">(success)</span>
                                    <small id="telnumHelp" class="form-text text-muted"> 请输入11位手机号码 </small>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="password1" class="col-sm-3">密码</label>
                                <div class="col-sm-9">
                                    <input type="password" class="form-control" id="password1" placeholder=""> <small
                                        id="passwordHelp1" class="form-text text-muted">
                                        请输入大写字母、小写字母、数字组成的组合，至少8位，至多16位 </small>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="password2" class="col-sm-3"></label>
                                <div class="col-sm-9">
                                    <input type="password" class="form-control" id="password2" placeholder=""> <small
                                        id="passwordHelp2" class="form-text text-muted"> 请输入再次确认密码 </small>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="name" class="col-sm-3">姓名</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="name" placeholder="">
                                    <small id="nameHelp" class="form-text text-muted">
                                        请输入理发师的姓名或昵称 最多20位 </small>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="sex" class="col-sm-3">性别</label>
                                <div class="col-sm-9">
                                    <select id="sex" class="form-control">
                                        <option value="true" selected>先生</option>
                                        <option value="false">女士</option>
                                    </select> <small id="sexHelp" class="form-text text-muted">
                                        请输入理发师的性别 </small>
                                </div>
                            </div>

                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" id="signupcheck" class="btn btn-primary btn-block">添加</button>
                            </div>

                        </form>
                    </div>
                    <div class="col-sm-2"></div>



                    <div class='clearfix' style='margin-bottom: 20px;'></div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

</body>

</html>