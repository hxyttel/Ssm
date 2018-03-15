<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>提示用户是否去邮箱验证</title>
	<!--[if lt IE 9]>
    <script src="statics/newcommon/js/html5shiv.js"></script>
    <script src="statics/home2/js/excanvas.js" type="text/javascript"></script>
    <link rel="js/stylesheet" href="iefix.css">
    <![endif]-->
    <link rel="Shortcut  Icon" href="${pageContext.request.contextPath}/statics/other/lco/6.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/statics/newcommon/css/m2-commonNew.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/statics/home2/css/m2-main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/statics/newcommon/css/m2-common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/statics/company_finance/css/company_finance.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/statics/home/css/newPage.css" />
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/statics/home/js/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/statics/newcommon/js/common.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/ibanner_full.js"></script>
	
   	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/statics/home2/css/front.css">
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/statics/newcommon/css/m2-common.css">
   	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/statics/home2/js/m2-front.js"></script>
</head>
<body>
	<!-- 头部start -->
	<jsp:include page="../include/head.jsp"></jsp:include>
	<!-- 头部end -->
	
	<!-- 右侧边栏 start -->
	<jsp:include page="../include/sidebar.jsp"></jsp:include>
	<!-- 右侧边栏 end -->
	<div class="buffer">
    	<div class="main warp-1000">
    	
    		<c:if test="${isgo == 1 }">
	    		<h1>验证邮箱发送成功</h1>
	            <p>前往邮箱验证</p>
	            <a href="http://mail.qq.com">QQ邮箱</a>
    		</c:if>
            <c:if test="${isgo == 0 }">
	    		<h1>验证邮箱发送失败</h1>
	            <p>返回个人中心</p>
	            <a href="${pageContext.request.contextPath}/userverify?uiid=${sessionScope.userinfo.uiid}">返回</a>
    		</c:if>
       </div>
    </div>
    <!-- 足部start -->
    <jsp:include page="../include/floot.jsp"></jsp:include>
    <!-- 足部end -->
</body>
</html>