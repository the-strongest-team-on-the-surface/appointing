<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<head>
    <title>test</title>
    <%
    pageContext.setAttribute("APP_PATH",request.getContextPath());
    %>
    <script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
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
                <table class="table">
                    <tr>
                        <th>#</th>
                        <th>#</th>
                        <th>#</th>
                        <th>#</th>
                        <th>#</th>
                    </tr>
                    <tr>
                    <c:forEach items="${pageinfo.list}" var="tt">
                            <tr>
                                    <th>${tt.consumerId}</th>
                                    <th>${tt.name}</th>
                                    <th>${tt.telNum}</th>
                                    <th>${tt.sex=="true"?"man":"women"}</th>
                                    <th>${tt.password}</th>
                            </tr>
                    </c:forEach>
                    </tr>

                </table>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                ${pageinfo.pageNum},总${pageinfo.pages},${pageinfo.total}
            </div>
            <div class="col-md-6">
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