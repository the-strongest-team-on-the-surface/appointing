<%@page contentType="text/html; charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>

<head>
<!-- <style type="text/css">
body {
	background-image: url('https://api.ioliu.cn/bing/');
	background-repeat: no-repeat;
	background-size: 300% 300%;
	background-attachment: fixed;
	background-position: center;
}
</style> -->

<meta charset="utf-8">
<title>理发店</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>var pageContext = "${pageContext.request.contextPath}";</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/store.js"></script>

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
						<img alt="140x140" src="C:\\workspace\\default3.jpg"
							class="img-circle" />
						<h3 id="sinfoh3"></h3>
						<p id="sinfop1"></p>
						<button class="btn btn-danger" id="addbaber" data-toggle="modal"
							data-target="#myModal">添加理发师</button>
					</div>
				</div>

			</div>

			<div class="col-md-10 column ">
				<div class="col-md-12 column well well-sm">
					<ul id="myTab" class="nav nav-tabs">
						<li class="active"><a href="#home1" data-toggle="tab">理发师</a></li>
					</ul>
				</div>
				<div id="myTabContent" class="tab-content ">

					<div class="tab-pane fade in active " id="home1">

						<div class='clearfix' style='margin-bottom: 30px;'></div>
						<div class="junbotron well">
							<div
								style="position: relative; left: 20px; top: 0px; width: 900px; height: 300px"
								id="home"></div>
						</div>

						<div class="col-md-4" id="home4">
							<div class='clearfix' style='margin-bottom: 30px;'></div>
							<p id="p"></p>
						</div>
						<div class="col-md-6 col-md-offset-2" id="home3"></div>

					</div>

				</div>

			</div>
		</div>
	</div>


	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加理发师</h4>
				</div>

				<div class="modal-body">

					<div class='clearfix' style='margin-bottom: 20px;'></div>

					<div class="col-sm-2"></div>
					<div class="col-sm-8">
						<form class="form-horizontal" onsubmit="return fnSignup()">

							<div class="form-group row has-feedback" id="dtelnum">
								<label for="telnum" class="col-sm-3 ">手机号码</label>
								<div class="col-sm-9">
									<input onchange="fretel()" type="text" class="form-control"
										id="telnum" placeholder=""> <span id="stelnum"></span>
									<small id="telnumHelp" class=" form-text text-muted">
										请输入11位手机号码 </small>
								</div>
							</div>

							<div class="form-group row has-feedback" id="dpassword1">
								<label for="password1" class=" col-sm-3">密码</label>
								<div class="col-sm-9">
									<input onchange="frepassword1()" type="password"
										class="form-control" id="password1" placeholder=""><span
										id="spassword1"></span> <small id="passwordHelp1"
										class=" form-text text-muted">
										请输入大写字母、小写字母、数字组成的组合，至少8位，至多16位 </small>
								</div>
							</div>

							<div class="form-group row has-feedback" id="dpassword2">
								<label for="password2" class=" col-sm-3"></label>
								<div class="col-sm-9">
									<input onchange="frepassword2()" type="password"
										class="form-control" id="password2" placeholder=""><span
										id="spassword2"></span> <small id="passwordHelp2"
										class=" form-text text-muted"> 请输入再次确认密码 </small>
								</div>
							</div>

							<div class="form-group row has-feedback" id="dname">
								<label for="name" class=" col-sm-3">姓名</label>
								<div class="col-sm-9">
									<input type="text" onchange="frename()" class="form-control"
										id="name" placeholder=""><span id="sname"></span> <small
										id="nameHelp" class=" form-text text-muted">
										请输入理发师的姓名或昵称 最多20位 </small>
								</div>
							</div>

							<div class="form-group row">
								<label for="sex" class="col-sm-3">性别</label>
								<div class="col-sm-9">
									<select id="sex" class="form-control">
										<option value="true" selected>先生</option>
										<option value="false">女士</option>
									</select> <small id="sexHelp" class="form-text text-muted">请选择理发师的性别</small>
								</div>
							</div>

							<div class="form-group row has-feedback" id="dbtime">
								<label for="btime" class="col-sm-3">上班时间</label>
								<div class="col-sm-9">
									<input type="text" onchange="frebtime()" class="form-control"
										id="btime"> <span id="sbtime"></span> <small
										id="btimeHelp" class=" form-text text-muted">请输入0-24之间整数</small>
								</div>
							</div>

							<div class="form-group row has-feedback" id="detime">
								<label for="etime" class="col-sm-3">下班时间</label>
								<div class="col-sm-9">
									<input type="text" onchange="freetime()" class="form-control"
										id="etime"> <span id="setime"></span> <small
										id="btimeHelp" class=" form-text text-muted">请输入0-24之间整数</small>
								</div>
							</div>

							<div class="col-sm-offset-3 col-sm-9 row">
								<button type="submit" id="signupcheck"
									class="btn btn-primary btn-lg btn-block">注册</button>
							</div>

						</form>
					</div>
					<div class="col-sm-2"></div>



					<div class='clearfix' style='margin-bottom: 20px;'></div>

				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title" id="serviceModalLabel">删除理发师</h4>
				</div>

				<div class="modal-body">

					<div class='clearfix' style='margin-bottom: 20px;'></div>

					<div class="col-sm-2"></div>
					<div class="col-sm-8">
						<form class="form-horizontal" onsubmit="return fnServiceSignup">

							<div>
								<div class="form-group row">
									<label class="col-sm-3 ">理发师ID</label>
									<div class="col-sm-9">
										<p id="pp1" class="form-control-static"></p>
									</div>
								</div>
							</div>
							<div>
								<div class="form-group row">
									<label class="col-sm-3 ">理发师信息</label>
									<div class="col-sm-9">
										<p id="pp2" class="form-control-static"></p>
									</div>
								</div>
							</div>

						</form>
					</div>
					<div class="col-sm-2"></div>



					<div class='clearfix' style='margin-bottom: 20px;'></div>

				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						onclick="deleteBaber()">确认删除</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="alterModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title" id="serviceModalLabel">修改信息</h4>
				</div>

				<div class="modal-body">

					<div class='clearfix' style='margin-bottom: 20px;'></div>

					<div class="col-sm-2"></div>
					<div class="col-sm-8">
						<form class="form-horizontal" onsubmit="return fnServiceSignup">

							<div>
								<div class="form-group row">
									<label class="col-sm-3 ">理发师ID</label>
									<div class="col-sm-9">
										<p id="pp3" class="form-control-static"></p>
									</div>
								</div>
							</div>
							<div>
								<div class="form-group row">
									<label class="col-sm-3 ">理发师信息</label>
									<div class="col-sm-9">
										<p id="pp4" class="form-control-static"></p>
									</div>
								</div>
							</div>

						</form>
					</div>
					<div class="col-sm-2"></div>



					<div class='clearfix' style='margin-bottom: 20px;'></div>

				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary">保存更改</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="serviceModal" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span>&times;</span>
					</button>
					<h4 class="modal-title" id="serviceModalLabel">添加服务</h4>
				</div>

				<div class="modal-body">

					<div class='clearfix' style='margin-bottom: 20px;'></div>

					<div class="col-sm-2"></div>
					<div class="col-sm-8">
						<form class="form-horizontal" onsubmit="return fnServiceSignup">

							<div>
								<div class="form-group row">
									<label class="col-sm-3 ">理发师ID</label>
									<div class="col-sm-9">
										<p id="pp5" class="form-control-static"></p>
									</div>
								</div>
							</div>
							<div>
								<div class="form-group row">
									<label class="col-sm-3 ">理发师信息</label>
									<div class="col-sm-9">
										<p id="pp6" class="form-control-static"></p>
									</div>
								</div>
							</div>

							<div class="form-group row has-feedback" id="dservicename">
								<label for="servicename" class="col-sm-3 ">服务名称</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="servicename"
										placeholder=""> <span id="sservicename"></span> <small
										id="servicenameHelp" class=" form-text text-muted">
										请输入服务名称 </small>
								</div>
							</div>
							<div class="form-group row has-feedback" id="dsprice">
								<label for="sprice" class="col-sm-3 ">服务价格</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" id="sprice"
										placeholder=""> <span id="ssprice"></span> <small
										id="spriceHelp" class=" form-text text-muted"> 请输入服务价格
									</small>
								</div>
							</div>

						</form>
					</div>
					<div class="col-sm-2"></div>



					<div class='clearfix' style='margin-bottom: 20px;'></div>

				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						onclick="addService()">确认添加</button>
				</div>
			</div>
		</div>
	</div>

</body>

</html>