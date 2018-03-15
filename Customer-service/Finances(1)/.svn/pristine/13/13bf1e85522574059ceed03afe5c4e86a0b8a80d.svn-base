<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
%>
<html>
	<head>
		<title>亿信金融后台登录</title>
		<script src="${pageContext.request.contextPath}/statics/back/static/js/jquery.min.js"></script>
		<link href="${pageContext.request.contextPath}/statics/back/login/css/main.css" rel="stylesheet" type="text/css" />
		<link rel="Shortcut  Icon" href="/Finances/statics/other/lco/6.png">
		
		
		
		<!-- 图形验证码 -->
	<script src="/Finances/statics/front/js/gVerify.js"></script>
		<script type="text/javascript">
		var canSubmit=false;
	        //判断用户名
	        function empName(){
	        	var name =$("#value_1").val();
	        	if(name==null || name==''){
	        		$("#value_1").shake(2, 10, 400);
	        	   	$("#value_1").val("");
	        	    $("#value_1").attr('placeholder',"用户名不能为空！");
	        		canSubmit = false;
	        	}
	        	else{
	        		canSubmit = true;
	        	}
	        }
	        
	       function empPassword(){
	    	   var password =$("#value_2").val();
	        	if(password==null || password==''){
	        		$("#value_2").shake(2, 10, 400);
	        	   	$("#value_2").val("");
	        	    $("#value_2").attr('placeholder',"密码不能为空！");
	        		canSubmit = false;
	        	} 
	        	else{
	        		canSubmit = true;
	        	}
	       } 
	      function checkimgcode(){
	    	 	 var cc = $("#value_3").val();
	    		var res = verifyCode.validate(cc);
	    		if(res){
	    			canSubmit = true;
	    		}else{
	    			$("#value_3").shake(2, 10, 400);
	        	   	$("#value_3").val("");
	        	    $("#value_3").attr('placeholder',"验证码输入错误！");
	    			canSubmit = false;
	    		}
	      }
	       
	       function login(){
	    	   empName();
	    	   empPassword();
	    	   checkimgcode();
	    	   if (canSubmit !== true) {
	    		   return;
	    	   }else{
	    		   var name =$("#value_1").val();
	    		   var pas =$("#value_2").val();
	    		   window.location.href="${pageContext.request.contextPath}/back/loginindex?name="+name+"&password="+pas+""; 
	    	   }
	       }
    </script>
   
	</head>
	<body>
	<div class="login">
    <div class="box png">
		<div class="logo png"></div>
		<div class="input">
			<div class="log">
				<div class="name">
					<label>用户名</label>
					<input type="text" onblur="empName();" class="text" id="value_1" placeholder="用户名" name="value_1" tabindex="1">
				</div>
				<div class="pwd">
					<label>密　码</label>
					<input type="password" onblur="empPassword();" class="text" id="value_2" placeholder="密码" name="value_2" tabindex="2">
				</div>
				<div class="pwd">
					<label>验证码</label>
					<input type="text" style="width: 120px;" onblur="checkimgcode();" class="text" id="value_3" placeholder="验证码" name="value_3" tabindex="2">
					<span id="reverifyCode"></span>
					<input type="button" class="submit" onclick="login();" tabindex="3" value="登录">
					<script type="text/javascript">
						if("${sessionScope.message_login}"!=""){
							alert('${sessionScope.message_login}');
						}
					</script>
					<%
						session.removeAttribute("message_login");
					%>
					<div class="check"></div>
				</div>
				<div class="tip"></div>
			</div>
		</div>
	</div>
    <div class="air-balloon ab-1 png"></div>
	<div class="air-balloon ab-2 png"></div>
    <div class="footer"></div>
</div>
 <script type="text/javascript">
	  //图形验证码
	    if ( $("#reverifyCode").length > 0 ) { 
	    	var verifyCode = new GVerify("reverifyCode");
	    }
    </script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/back/login/js/jQuery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/back/login/js/fun.base.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/back/login/js/script.js"></script>
<script type="text/javascript">
jQuery.fn.shake = function (intShakes /*Amount of shakes*/, intDistance /*Shake distance*/, intDuration /*Time duration*/) {
    this.each(function () {
        var jqNode = $(this);
        jqNode.css({ position: 'relative' });
        for (var x = 1; x <= intShakes; x++) {
            jqNode.animate({ left: (intDistance * -1) }, (((intDuration / intShakes) / 4)))
            .animate({ left: intDistance }, ((intDuration / intShakes) / 2))
            .animate({ left: 0 }, (((intDuration / intShakes) / 4)));
        }
    });
    return this;
}
</script>

<!--[if IE 6]>
<script src="${pageContext.request.contextPath}/statics/back/login/js/DD_belatedPNG.js" type="text/javascript"></script>
<script>DD_belatedPNG.fix('.png')</script>
<![endif]-->
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
<p>版权 &copy; 2018 | 亿信金融 | 保留所有权利  | Template by &nbsp;<a href="/Finances/toindex">.亿信金融.</a></p>
</div>
</body>
</html>