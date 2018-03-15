<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>  
<!DOCTYPE html>
<html>
<head>
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/other/lco/6.png"> 

	<meta name="keywords" content="网贷平台,网络借贷，网络赚钱项目,理财产品">
	<meta name="description" content="爱钱的网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络借贷，就选爱钱帮。">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 <title>登入 | 亿信金融</title>
	 <!--[if lt IE 9]>
    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
     <![endif]-->
     <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/statics/newcommon/css/m2-commonNew.css">
   	 <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/statics/home2/css/m2-main.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/statics/newcommon/css/m2-common.css">
     <script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/statics/home/js/jquery.min.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/statics/newcommon/js/common.js"></script>
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/statics/home2/css/m2-login.css">
	 <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
	   <style type="text/css">
        .myloginmask {position:fixed;top: 0;left: 0;right: 0;bottom: 0;background-color: black;display: none;opacity: 0.7;z-index: 800;filter:alpha(opacity=70)}
        .mylogin {position:   fixed;top: 50%;left: 50%;margin-top: -346px;margin-left: -260px;width: 520px;height: 496px;background-image: url("/Finances/statics/front/statics/home2/images/login/login_info.png");background-repeat: no-repeat;z-index: 1000;display: none;}
        .mylogin .topcontent {font-weight:bold;text-align: center;color: #666666;font-size: 18px;padding-top: 284px;line-height: 36px;}
        .mylogin .topcontent span {color: #883535;}
        .mylogin .bottomcontent {font-weight:bold;font-size:20px;line-height: 30px;width:384px;margin: 50px auto;}
        .mylogin .bottomcontent a{color: #333333;text-decoration: none;}
        .mylogin .closeimg {position: absolute;top: 220px;right: 14px;width: 43px;height: 43px;background-image: url("/Finances/statics/front/statics/home2/images/login/cha.png");}
    </style>  
	 <script type="text/javascript">
        $(function(){
            $('.m2-pwdConfirm-auto b').click(function(){
                $('.m2-pwdConfirm-auto,.m2-pwdBg').hide();
            })
        })
    </script>
     <script type="text/javascript">
        $(function(){
            $.post("mydatetime.html",{mytime:''},function(t){
                $("#mytime").html(t);
            });
        })
    </script>
    <script type="text/javascript">
        function infoDialogClose(){
            $('.m2-pwdConfirm-close').click(function(){
                $('.m2-pwdBg').hide();
                $('.m2-pwdConfirm').hide();
                $('.m2-pwdConfirm-con').text('');
                $('#dialog-status').removeClass('m2-pwdConfirm-ture');
                $('#dialog-status').removeClass('m2-pwdConfirm-false');
                $(this).unbind();
            });
        }
        function showInfoDialog(text,status,func,callback){
            $('.m2-pwdConfirm-con').text(text);
            if(status){
                $('#dialog-status').addClass('m2-pwdConfirm-ture');
            }else{
                $('#dialog-status').addClass('m2-pwdConfirm-false');
            }
            $('.m2-pwdBg').show();
            $('.m2-pwdConfirm').show();
            if(typeof(callback)=='function'){
                $('.m2-pwdConfirm-close').click(callback);
            }
            infoDialogClose();
            if(typeof(func)=='function'){
                func();
            }
//			$(".mylogin").show();
        }
        function showLoginInfoDialog(text,status,func,callback){
            $('.m2-pwdConfirm-con').text(text);
            if(status){
                $('#dialog-status').addClass('m2-pwdConfirm-ture');
            }else{
                $('#dialog-status').addClass('m2-pwdConfirm-false');
            }
            $('.m2-pwdBg').show();
            $('.m2-pwdConfirm').show();
            if(status){
                $('.m2-pwdConfirm').hide();
                $('.m2-pwdConfirm-auto').show();
            }
            if(typeof(callback)=='function'){
                $('.m2-pwdConfirm-close').click(callback);
            }
            infoDialogClose();
            if(typeof(func)=='function'){
                func();
            }
        }
        function showLoginDialog(text,status){
            $("#nowcoin").html(text.allcoin);
            $("#overcoin").html(text.overcoin);
            $("#user").html(text.userName);
            $(".mylogin").show();
            $(".myloginmask").show();
        }
        $(".mylogin .closeimg").click(function(){
            $(".mylogin").hide();
            $(".myloginmask").hide();
            window.location.href="/Index";
        })
    </script>
   	<!-- 图形验证码 -->
		<script src="/Finances/statics/front/js/gVerify.js"></script>
</head>
<body>
	<!--公共提示框start-->
    <div class="m2-pwdBg" style='display:none;z-index:9000'></div>
    <div class="m2-pwdConfirm" style='display:none;z-index:9001'>
        <i class="m2-pwdConfirm-close"></i>
        <i class="m2-pwdConfirm-ture" id='dialog-status'></i>
        <div class="m2-pwdConfirm-con"></div>
    </div>
    <div class="myloginmask"></div>
    <div class="mylogin">
        <div class="closeimg"></div>
        <div class="topcontent">
            <p><span id="user">${sessionScope.user.uphone}</span>，欢迎回来！</p>
            <p>钱帮币<span id="nowcoin"></span>个，<span id="mytime"></span>即将到期<span id="overcoin"></span>个</p>
        </div>
        <div class="bottomcontent">
            <a href="usercenter-rewardcontrol-iqbrule"> 查看规则>></a>
            <a href="usercenter-rewardcontrol-coin" style="float:right">钱帮币兑换宝物>></a>
        </div>
    </div>
    <!--公共提示框end-->
    
    <!-- 右侧边栏start -->
    <jsp:include page="include/sidebar.jsp"></jsp:include>
    <!-- 右侧边栏end -->

    <!-- headerStart -->
 	<jsp:include page="include/head.jsp"></jsp:include>
    <!-- headerEnd -->
    
    <div class="m2-regist-main">
        <div class="m2-regist-center">
            <div class="m2-loginBox">
                <div class="m2-loginArea">
                    <div class="m2-loginArea-lef">
                        <a class="m2-login-actLink" href="javascript:void(0);"><img class="m2-loginEwm1" src="/Finances/statics/front/statics/home2/images/m2-loginEwm1.jpg" alt=""><img class="m2-loginEwm2" src="/Finances/statics/front/statics/home2/images/m2-loginEwm2.jpg" alt="" style="display:none;"><i></i></a>
                        <p><span>了解爱钱帮精选活动，请进&nbsp;</span><a class="m2-login-moreLink" target="_blank" href="licaiwang_zhuantihuodong.html">活动专区&raquo;</a></p>
                    </div>
                    <div class="m2-loginArea-rig">
                        <div class="m2-loginArea-rigHead" >
                            <h2>会员登录</h2>
                            <p>
                                <a href="/Finances/toregirset"><i></i>立即注册</a>
                            </p>
                        </div>
                        <form class="m2-login-form" action="">
                            <div class="m2-loginForm-item m2-login-username">
                                <span><i></i></span>
                                <input type="text" id="user_name" max="11" placeholder="用户名/手机号/邮箱">
                                <b id="userwarn"></b>
                            </div>
                            <div class="m2-loginForm-item m2-login-pwd" style="margin:25px 0 0 0;">
                                <span><i></i></span>
                                <input type="password" id="pass_word" placeholder="密码">
                                <b id="passwarn"></b>
                            </div>
 							 
                            <div class="m2-login-forget">
                            	
                                <p style="font-weight: bolder;text-align: left;position: absolute;color:black;width:200px;height: 24px;line-height: 24px;margin:-4px 0;">
                               		 记住密码：<input type="checkbox" id="issvae" checked="">	
                                </p>
                                <a href="/Finances/toforget" class="m2-loginForget">忘记密码？</a>
                            </div>
                            <input type="hidden" name="__hash__" value="2ed71d5dc3b3d172b09f15e7631d021f_ed4f61a6dca2ed264a7bf9ceb8d3e04b" /></form>
                        <div class="m2-login-submit">
                            <a href="javascript:;" onclick="login();" class="m2-loginBtn">确认登录</a>
                            <p class="alarmnew" style="font-weight: bolder;text-align: left;position: absolute;color:red;width:200px;height: 24px;line-height: 24px;margin:-4px 0;"></p>
                        </div>

                    </div>
                </div>
                <p class="m2-loginBottontips">为了您的数据安全，我们采用了SSL传输方式，256位SGC加密保护!</p>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        //codeShow();
        //显示验证码
        function codeShow(){
            $('.m2-login-code').show();
        }
    </script>
    <script type="text/javascript">
	    $(function(){
	        $('#account,#redbag,#percentage,#message,#m2-commonRight').click(function(){
	            $("#user_name").focus();
	        })
	    })
	</script>
	<script type="text/javascript">
	    function login(){
	        var p = makevar(['user_name','pass_word','issvae']);
	        var canSubmit = true;
	        $(".alarmnew").html("");
	        if(typeof p.user_name=="undefined"){
	
	            $(".alarmnew").html("用户名不能为空");
	            return false;
	        }
	        if(typeof p.pass_word=="undefined" || typeof p.pass_word==null || p.pass_word==""){
	
	            $(".alarmnew").html("密码不能为空");
	            return false;
	        }
	    	p.issvae =2;
	    	//alert($('#issvae').is(':checked'));
			if($('#issvae').is(':checked')) {
				//选择
				//alert("选中");
				p.issvae = 1;
            }else{
            	//未选择
            	//alert("未选中");
            	p.issvae = 2;
            }
			//alert(p.issvae);
	        if(canSubmit!==true) return false;
	       //用户登入的controller方法
	        postData("/Finances/user/userLogin",p,function(d){
	
				$(".alarmnew").hide();
	            d.url = decodeURIComponent(d.url);
	            if(d.status==3){
	                showInfoDialog(d.message,1);
	                setTimeout(function(){
	                    window.location.href=d.url;
	                },3000);
	            }else if(d.status==2){
	                showInfoDialog(d.comments,1);
	                setTimeout(function(){
	                    window.location.href=d.url;
	                },3000);
	            }else if(d.status==6){
	                window.location.reload();
	            }else if(d.status==1){
	                showLoginInfoDialog(d.comments,1);
	                setTimeout(function(){
	                    window.location.href=d.url;
	                },3000);
	            }else if(d.status==5){
	                $(".alarmnew").html(d.message);
	    			$(".alarmnew").show();
	                if(d.verify_nums>3){
	                    $("#reverifyCode").click();
	                    codeShow();
	                }
	            }
	            else{
	                $(".alarmnew").html(d.message);
					$(".alarmnew").show();
	                if(d.verify_nums>3){
	                    $("#reverifyCode").click();
	                    codeShow();
	                }
	            }
	        });
	    }
	    function oklinklogin(){
	        window.open('/thirdparty-oklink-oauth_getcode');
	    }
	    $(document).keydown(function(e){
	        if(e.keyCode == 13) {
	            login();
	        }
	    });
	</script>

		<script type="text/javascript">
		    $(function(){
		        var docTop=$(document).height()-$(window).height();
		        if (docTop>0) {
		            $(document).scrollTop(docTop/2);
		        }
		    });
		</script>
		<script type="text/javascript">
		    $('.m2-login-actLink i').click(function(){
		        $('.m2-loginEwm1').toggle();
		        $('.m2-loginEwm2').toggle();
		    });
		</script>
		 <!-- 实现右侧登入注册功能 -->
		<script src="/Finances/statics/front/js/sidebarlogreg.js"></script>
    </body>
</html>