<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<head>
    <title>test</title>

	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(function () {
            $.get("${pageContext.request.contextPath}/wtf/tlist?1", function (pageinfo) {
                build_table(pageinfo);
                build_page_info(pageinfo);
            });
        });
        function build_table(pageinfo) {
            var emps = pageinfo.list;
            $.each(emps, function (index, item) {
                var cuIdTd = $("<td></td>").append(item.consumerId);
                var cuNameTd = $("<td></td>").append(item.name);
                var cuTelTd = $("<td></td>").append(item.telNum);
                var cuSexTd = $("<td></td>").append(item.sex == true ? "男" : "女");
                var cuPasswordTd = $("<td></td>").append(item.password);
                var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm").append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
                $("<tr></tr>").append(cuIdTd)
                    .append(cuNameTd)
                    .append(cuTelTd)
                    .append(cuSexTd)
                    .append(cuPasswordTd)
                    .append(editBtn)
                    .appendTo("#cu_table tbody");
            });
        }
        function build_page_info(pageinfo){
            $('#page_info_area').append("当前"+pageinfo.pageNum+"页，总"+pageinfo.pages+"页，总"+pageinfo.total+"条记录");
        }
        function build_page_nav(pageinfo){

        }
    </script>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>SSM-CRUD</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-md-offset-8">
                <button class="btn btn-primary">add</button>
                <button class="btn btn-primary">del</button>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <table class="table table-condensed" id="cu_table">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>#</th>
                            <th>#</th>
                            <th>#</th>
                            <th>#</th>
                            <th>#</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6" id="page_info_area"></div>
            <div class="col-md-6" id="page_info_nav">
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li><a href="#">1</a></li>
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</body>