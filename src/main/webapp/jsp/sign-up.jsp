<%@page contentType="text/html; charset=UTF-8" language="java"%>


<head>
    <title>注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
     <style>
            span{
                border-radius:90px;
                background-color:transparent;
                <!--width:30px;
                height:30px;-->
            }
        </style>
     <script >
     </script>
    <script>
       function kp(){
    	   var x=document.getElementById("telnum").value
    	   if(x==""){
    		   telnum.style.borderColor = "whitesmoke";
    		   ino.style.backgroundColor = "white";
    	        ino.innerHTML = "";
    	   }else if(!/^1[34578]\d{9}$/.test(x)){ 
    	        telnum.style.borderColor = "red";
    	        ino.style.backgroundColor = "red";
    	        ino.innerHTML = "×";
       }else{
        telnum.style.borderColor = "green";
        ino.style.backgroundColor = "green";
        ino.innerHTML = "√";
       }
       }
       
       function kp1(){
    	   var x=document.getElementById("password1").value
 			if(x==""){
 				password1.style.borderColor = "whitesmoke";
     		   ino1.style.backgroundColor = "white";
     	        ino1.innerHTML = "";
    	   }else if(!/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9]{8,16}$/.test(x)){ 
    	        password1.style.borderColor = "red";
    	        ino1.style.backgroundColor = "red";
    	        ino1.innerHTML = "×";
       }else{
        password1.style.borderColor = "green";
        ino1.style.backgroundColor = "green";
        ino1.innerHTML = "√";
       }
       }
       
       function kp2(){
    	   var x=document.getElementById("password2").value
           if(x==""||!/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9]{8,16}$/.test(document.getElementById("password1").value)){
        	   password2.style.borderColor = "whitesmoke";
    		   ino2.style.backgroundColor = "white";
    	        ino2.innerHTML = "";
    	   }else if((!(x == document.getElementById("password1").value))&&(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9]{8,16}$/.test(document.getElementById("password1").value))){ 
    	        password2.style.borderColor = "red";
    	        ino2.style.backgroundColor = "red";
    	        ino2.innerHTML = "×";
       }else{
        password2.style.borderColor = "green";
        ino2.style.backgroundColor = "green";
        ino2.innerHTML = "√";
       }
       }
       
       function kp3(){
    	   var x=document.getElementById("fname").value
			if(x==""){
				fname.style.borderColor = "whitesmoke";
	    		   ino3.style.backgroundColor="white";
	    	        ino3.innerHTML = "";
    	   }else if(!/^.{1,20}$/.test(x)){ 
    	        fname.style.borderColor = "red";
    	        ino3.style.backgroundColor = "red";
    	        ino3.innerHTML = "×";
  		   }else{
        fname.style.borderColor = "green";
        ino3.style.backgroundColor = "green";
        ino3.innerHTML = "√";
       }
       }
       
      
        function fnSignup() {
            var name = $('#fname').val();
            var password1 = $('#password1').val();
            var telnum = $('#telnum').val();
            var password2 = $('#password2').val();
            var sex = $('#sex').val();

            var retel = /^1[34578]\d{9}$/;
            var repwd = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9]{8,16}$/;
            var rename = /^.{1,20}$/;
            if (retel.test(telnum)&&repwd.test(password1)&&password1 == password2&&rename.test(name)) {
            } else if(!telnum||!password1||!password2||!name){
            	alert("信息不能为空");
            	return false;
            }else{
                alert("格式不符合要求");
                return false;
            }

           

            var param = {};

            param.telNum = telnum;
            param.password = password1;
            param.name = name;
            param.sex = sex; 
            alert(param.sex);
            $.ajax({
                type: 'POST',
                data: JSON.stringify(param),
                contentType: 'application/json',
                dataType: 'json',
                url: 'wtf/consignup',
                async: false,
                success: function (data) {
                    if (data > 0)
                        alert("注册成功")
                    else
                        alert("注册失败！")
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
    <form onsubmit="return fnSignup()">
        <div class="container">
            <div class="row clearfix">
                <div class="col-md-3 column"></div>
                <div class="col-md-6 column">

                    <div class="clearfix" style="margin-bottom: 120px;"></div>
                    <div class="form-group row col-sm-4 offset-sm-7">
                        <button onClick="window.open('log-in.html')" type="button" id="tologin"
                            class="btn btn-default btn-link ">如果已有账号，请直接登录</button>
                    </div>
                    <div class="form-group row">
                        <label for="telnum" class="col-sm-3">手机号码</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="telnum" placeholder="" onblur=kp()>
                            <small id="telnumHelp"
                                class="form-text text-muted"> 请输入11位手机号码 </small>
                             

                             
                        </div>
                        <div class="col-sm-1">
                        
                        <div class="clearfix" style="margin-bottom: 6px;"></div>
                        <span id="ino"></span>
                    </div>

                       
                    </div>

                    <div class="form-group row">
                        <label for="password1" class="col-sm-3">密码</label>
                        <div class="col-sm-7">
                            <input type="password" class="form-control" id="password1" placeholder="" onblur=kp1()> <small
                                id="passwordHelp1" class="form-text text-muted">
                                请输入大写字母、小写字母、数字组成的组合，至少8位，至多16位 </small>
                        </div>
                        
                        <div class="col-sm-1">
                        
                        <div class="clearfix" style="margin-bottom: 6px;"></div>
                        <span id="ino1"></span>
                    </div>
                        
                    </div>

                    <div class="form-group row">
                        <label for="password2" class="col-sm-3">确认密码</label>
                        <div class="col-sm-7">
                            <input type="password" class="form-control" id="password2" placeholder="" onblur=kp2()> 
                            <small id="passwordHelp2" class="form-text text-muted"> 请输入再次确认密码 </small>
                        </div>
                         
                        <div class="col-sm-1">
                        
                        <div class="clearfix" style="margin-bottom: 6px;"></div>
                        <span id="ino2"></span>
                    </div>
                        
                    </div>

                    <div class="form-group row">
                        <label for="name" class="col-sm-3">姓名</label>
                        <div class="col-sm-7">
                            <input type="text" class="form-control" id="fname" placeholder="" onblur=kp3() > 
                            <small id="nameHelp" class="form-text text-muted"> 请输入您的姓名或昵称 最多20位 </small>
                        </div>
                       
                        <div class="col-sm-1">
                        
                        <div class="clearfix" style="margin-bottom: 6px;"></div>
                        <span id="ino3"></span>
                        </div>
                    </div>
                        
                  

                    <div class="form-group row">
                        <label for="sex" class="col-sm-3">性别</label>
                        <div class="col-sm-7">
                            <select id="sex" class="form-control">
                                <option value="true" selected>先生</option>
                                <option value="false">女士</option>
                            </select> <small id="sexHelp" class="form-text text-muted"> 请告诉我们如何称呼您 </small>
                        </div>
                    

                    <div class="col-sm-8 offset-sm-2">
                        <button type="submit" id="signupcheck" class="btn btn-primary btn-lg btn-block">注册</button>
                    </div>
				</div>
                </div>
            </div>
        </div>
    </form>

</body>

</html>