<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>  
<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/other/lco/6.png">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/ing/css/main.css" type="text/css" media="screen, projection" /> <!-- main stylesheet -->
		<link rel="stylesheet" type="text/css" media="all" href="${pageContext.request.contextPath}/statics/front/ing/css/tipsy.css" /> <!-- Tipsy implementation -->
		
		<!--[if lt IE 9]>
			<link rel="stylesheet" type="text/css" href="css/ie8.css" />
		<![endif]-->
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/ing/scripts/jquery-1.7.2.min.js"></script> <!-- uiToTop implementation -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/ing/scripts/custom-scripts.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/ing/scripts/jquery.tipsy.js"></script> <!-- Tipsy -->
		
		<script type="text/javascript">
		
		$(document).ready(function(){
					
			universalPreloader();
								   
		});
		
		$(window).load(function(){
		
			//remove Universal Preloader
			universalPreloaderRemove();
			
			rotate();
		    dogRun();
			dogTalk();
			
			//Tipsy implementation
			$('.with-tooltip').tipsy({gravity: $.fn.tipsy.autoNS});
								   
		});
		
		</script>
		<title>易信金融--404 页面</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
	</head>
    
    <%-- <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>易信金融--404 页面</title>
 	 <link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/other/lco/smalllog.png"> 
    <link href="${pageContext.request.contextPath}/statics/other/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/other/css/font-awesome.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/statics/other/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/other/css/style.css" rel="stylesheet"> --%>



<%-- <body class="gray-bg">


    <div class="middle-box text-center animated fadeInDown">
        <h1>404</h1>
        <h3 class="font-bold">页面未找到！</h3>

        <div class="error-desc">
            抱歉，页面好像去火星了~
        </div>
    </div>

    <!-- 全局js -->
     <script src="${pageContext.request.contextPath}/statics/other/bootstrap/js/jquery-3.2.1.min.js"></script>
   <script src="${pageContext.request.contextPath}/statics/other/bootstrap/js/bootstrap.min.js"></script>


</body> --%>

	<body>
		<!-- Universal preloader -->
		<div id="universal-preloader">
		    <div class="preloader">
		        <img src="${pageContext.request.contextPath}/statics/front/ing/images/universal-preloader.gif" alt="universal-preloader" class="universal-preloader-preloader" />
		    </div>
		</div>
		<!-- Universal preloader -->
		
		<div id="wrapper">
		<!-- 404 graphic -->
			<div class="graphic"></div>
		<!-- 404 graphic -->
		<!-- Not found text -->
			<div class="not-found-text">
		    	<h1 class="not-found-text">抱歉，页面不见了</h1>
		    </div>
		<!-- Not found text -->
		
		<!-- search form -->
		
		<!-- top menu -->
		<div class="top-menu">
			<a href="/Finances/toindex" class="with-tooltip" title="亿信金融">首页</a> | <a href="/Finances/tologin" class="with-tooltip" title="前台登录">登录</a> | <a href="/Finances/toregirset" class="with-tooltip" title="前台注册">注册</a> | <a href="/Finances/back/tologin" class="with-tooltip" title="后台登录">后台登录</a>
		</div>
		<!-- top menu -->
		
		<div class="dog-wrapper">
		<!-- dog running -->
			<div class="dog"></div>
		<!-- dog running -->
			
		<!-- dog bubble talking -->
			<div class="dog-bubble">
		    	
		    </div>
		    
		    <!-- The dog bubble rotates these -->
		    <div class="bubble-options">
		    	<p class="dog-bubble">
		        	Are you lost, bud? No worries, I'm an excellent guide!
		        </p>
		    	<p class="dog-bubble">
			        <br />
		        	Arf! Arf!
		        </p>
		        <p class="dog-bubble">
		        	<br />
		        	Don't worry! I'm on it!
		        </p>
		        <p class="dog-bubble">
		        	I wish I had a cookie<br /><img style="margin-top:8px" src="${pageContext.request.contextPath}/statics/ing/images/cookie.png" alt="cookie" />
		        </p>
		        <p class="dog-bubble">
		        	<br />
		        	Geez! This is pretty tiresome!
		        </p>
		        <p class="dog-bubble">
		        	<br />
		        	Am I getting close?
		        </p>
		        <p class="dog-bubble">
		        	Or am I just going in circles? Nah...
		        </p>
		        <p class="dog-bubble">
		        	<br />
		            OK, I'm officially lost now...
		        </p>
		        <p class="dog-bubble">
		        	I think I saw a <br /><img style="margin-top:8px" src="${pageContext.request.contextPath}/statics/ing/images/cat.png" alt="cat" />
		        </p>
		        <p class="dog-bubble">
		        	What are we supposed to be looking for, anyway? @_@
		        </p>
		    </div>
		    <!-- The dog bubble rotates these -->
		<!-- dog bubble talking -->
		</div>
		
		<!-- planet at the bottom -->
			<div class="planet"></div>
		<!-- planet at the bottom -->
		</div>
	</body>

</html>
