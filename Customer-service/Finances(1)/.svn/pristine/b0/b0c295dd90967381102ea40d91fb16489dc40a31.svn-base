<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="keywords" content="互联网金融,理财平台">
    	<meta name="description" content="爱钱帮为您打造一个公平、透明、安全、高效的互联网金融平台，引入第三方平台进行资金托管，爱钱帮不接手借贷资金，保障资金安全，回归中介本质，是您首选的理财平台。">
		<title>公告管理丨亿信金融 </title>
		<!--[if lt IE 9]>
		   	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
		<![endif]-->
		<link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
    	<link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
    	<link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
    	<link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/front.css">
    
   		<link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
    	<script type="text/javascript" src="/Finances/statics/front/statics/home/js/jquery.min.js"></script>
    	<script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
    	<script type="text/javascript" src="/Finances/statics/front/statics/home2/js/m2-front.js"></script>
    	<!--[if lt IE 9]>
	    <script src="../common/js/html5shiv.js"></script>
	    <![endif]-->
	</head>
	<!-- 右侧边栏 start -->
	<jsp:include page="include/sidebar.jsp"></jsp:include>
	<!-- 右侧边栏 end -->
    
    <!-- 头部start -->
    	<jsp:include page="include/head.jsp"></jsp:include>
    <!-- 头部end -->
    
<!-- 内容start -->
<body>
<!--头部start-->
    <div class="m2-secBanner-con"></div>
    <div class="security_ensure_one" style="margin:20px auto;width:940px;">
	    	<div class="security_ensure_content_title"><div class="left solid"></div>
		    	<ul>
		    	<c:forEach items="${listnf}" var="newsfocus">
		    		<li>
		    			<div style="color: green" align="center">
		    				${newsfocus.nftitle}
		    			</div>
		    		</li>
		    		<li>
		    			<div style="color: black" style="font-size:8px" class="divcss5_2">
		    				${newsfocus.nfcontent }
		    			</div>
		    		</li>
		    		<li>
		    			<div style="color: black" style="font-size:8px" align="left">
		    			  
		    			</div>
		    		</li>
		    	</c:forEach>
		    	</ul>
	    	<div class="right solid"></div></div>
	        	
	    	</div>
   
    </div>
    <div class="security_ensure_five">
        <p>用户信息和资金全部在徽商银行存管，马上开启您的赚钱之旅吧！</p>
        <button class="success_btn" onclick='window.location.href="/Finances/toindex"'>立即投资</button>
    </div>
    <!-- 内容end-->
    
    <!-- 足部start -->
    	<jsp:include page="include/floot.jsp"></jsp:include>
    <!-- 足部end -->
    
	</body>
</html>